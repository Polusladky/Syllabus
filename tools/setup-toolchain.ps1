<#
.SYNOPSIS
    Скачивает и раскладывает инструменты сборки в .toolchain (JDK 17, build-tools 34,
    platform android-34, apktool 2.11.1).

.DESCRIPTION
    Нужен только Windows с curl.exe (Windows 10+) и PowerShell 5.1.
    Повторный запуск ничего не перекачивает: уже распакованные компоненты пропускаются.
    Архивы кладутся во временную папку и удаляются после распаковки.

.PARAMETER Toolchain
    Куда раскладывать инструменты. По умолчанию <repo>\.toolchain.

.PARAMETER Force
    Перекачать и перераспаковать всё заново.

.EXAMPLE
    powershell -ExecutionPolicy Bypass -File tools\setup-toolchain.ps1
#>
[CmdletBinding()]
param(
    [string]$Toolchain = "",
    [switch]$Force
)

$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
if (-not $Toolchain) { $Toolchain = Join-Path $root ".toolchain" }

# Закреплённые версии: URL + ожидаемый размер в байтах.
$components = @(
    @{
        Name     = "jdk"
        Target   = "jdk"
        Archive  = "jdk17.zip"
        Url      = "https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_windows_hotspot_17.0.21_9.zip"
        Size     = 191117380
        # sha256 из api.adoptium.net/v3/assets/latest/17/hotspot (official)
        Sha256   = "98518ecf554465057ee5509462631deeee374bc368c12a411d225cd29381f84b"
        InnerDir = "jdk-17.0.21+9"
        Check    = "jdk\bin\javac.exe"
    },
    @{
        Name     = "build-tools"
        Target   = "build-tools"
        Archive  = "build-tools-34.zip"
        Url      = "https://dl.google.com/android/repository/build-tools_r34-windows.zip"
        Size     = 58253258
        # Google публикует для SDK только SHA-1: dl.google.com/android/repository/repository2-3.xml
        Sha1     = "62cfde1b6fcc3ad12a4d2ba1b537e752768bfd47"
        InnerDir = "android-14"
        Check    = "build-tools\aapt2.exe"
    },
    @{
        Name     = "platform"
        Target   = "platform"
        Archive  = "platform-34.zip"
        Url      = "https://dl.google.com/android/repository/platform-34-ext7_r03.zip"
        Size     = 63180081
        # SHA-1 из того же repository2-3.xml
        Sha1     = "1f2e9478d6a7601425ceaa553311dc43191f103d"
        InnerDir = "android-34"
        Check    = "platform\android.jar"
    },
    @{
        Name     = "apktool"
        Target   = "apktool.jar"
        Archive  = "apktool.jar"
        Url      = "https://github.com/iBotPeaches/Apktool/releases/download/v2.11.1/apktool_2.11.1.jar"
        Size     = 24562875
        # apktool не публикует хеши ни в релизе, ни через GitHub API.
        # Значение зафиксировано при проверенной загрузке; при смене версии его нужно
        # осознанно пересчитать (это единственная зависимость без официального хеша).
        Sha256   = "56d59c524fc764263ba8d345754d8daf55b1887818b15cd3b594f555d249e2db"
        InnerDir = $null
        Check    = "apktool.jar"
    }
)

function Download([string]$Url, [string]$Path, [int64]$Size, [string]$Sha256, [string]$Sha1) {
    for ($attempt = 1; $attempt -le 4; $attempt++) {
        Write-Host "  скачивание (попытка $attempt): $Url"
        curl.exe -sS -L --fail --retry 4 --retry-delay 3 --retry-all-errors --connect-timeout 20 -o $Path $Url
        if ($LASTEXITCODE -ne 0 -or -not (Test-Path $Path)) {
            Remove-Item $Path -Force -ErrorAction SilentlyContinue
            Start-Sleep -Seconds 2
            continue
        }

        $actualSize = (Get-Item $Path).Length
        if ($actualSize -ne $Size) {
            Write-Host "  размер не совпал: $actualSize вместо $Size" -ForegroundColor Yellow
            Remove-Item $Path -Force -ErrorAction SilentlyContinue
            continue
        }

        if ($Sha256) {
            $actual = (Get-FileHash $Path -Algorithm SHA256).Hash.ToLower()
            if ($actual -ne $Sha256.ToLower()) {
                Write-Host "  SHA-256 не совпал: $actual" -ForegroundColor Red
                Remove-Item $Path -Force -ErrorAction SilentlyContinue
                continue
            }
            Write-Host "  sha256 OK: $actual"
            return
        }

        if ($Sha1) {
            $actual = (Get-FileHash $Path -Algorithm SHA1).Hash.ToLower()
            if ($actual -ne $Sha1.ToLower()) {
                Write-Host "  SHA-1 не совпал: $actual" -ForegroundColor Red
                Remove-Item $Path -Force -ErrorAction SilentlyContinue
                continue
            }
            Write-Host "  sha1 OK: $actual"
            return
        }

        throw "для $Url не задан ожидаемый хеш — проверка целостности невозможна"
    }
    throw "Не удалось скачать и проверить $Url"
}

if (-not (Get-Command curl.exe -ErrorAction SilentlyContinue)) {
    Write-Host "ОШИБКА: не найден curl.exe (нужен Windows 10 1803+)" -ForegroundColor Red
    exit 1
}

New-Item -ItemType Directory -Force -Path $Toolchain | Out-Null
$temp = Join-Path $env:TEMP ("syllabus-toolchain-" + [Guid]::NewGuid().ToString("N"))
New-Item -ItemType Directory -Force -Path $temp | Out-Null

try {
    foreach ($c in $components) {
        $checkPath = Join-Path $Toolchain $c.Check
        if ((Test-Path $checkPath) -and (-not $Force)) {
            Write-Host "уже есть: $($c.Name)"
            continue
        }

        Write-Host "== $($c.Name)"
        $archive = Join-Path $temp $c.Archive
        Download $c.Url $archive $c.Size $c.Sha256 $c.Sha1

        if ($c.InnerDir) {
            $extract = Join-Path $temp ($c.Name + "-x")
            New-Item -ItemType Directory -Force -Path $extract | Out-Null
            & tar.exe -xf $archive -C $extract
            if ($LASTEXITCODE -ne 0) { throw "tar не распаковал $($c.Archive)" }
            $inner = Join-Path $extract $c.InnerDir
            if (-not (Test-Path $inner)) { throw "в архиве нет папки $($c.InnerDir)" }
            $target = Join-Path $Toolchain $c.Target
            Remove-Item $target -Recurse -Force -ErrorAction SilentlyContinue
            Move-Item $inner $target
        }
        else {
            Copy-Item $archive (Join-Path $Toolchain $c.Target) -Force
        }
    }
}
finally {
    Remove-Item $temp -Recurse -Force -ErrorAction SilentlyContinue
}

$missing = @()
foreach ($c in $components) {
    if (-not (Test-Path (Join-Path $Toolchain $c.Check))) { $missing += $c.Name }
}
if ($missing.Count -gt 0) {
    Write-Host ("ОШИБКА: не хватает: " + ($missing -join ", ")) -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Готово, инструменты в $Toolchain" -ForegroundColor Green
Write-Host "Дальше: .\build.ps1"
exit 0