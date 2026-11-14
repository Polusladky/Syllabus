<#
.SYNOPSIS
    Собирает APK Syllabus из smali (app/) и Java-патчей (patch/fixsrc).

.DESCRIPTION
    Шаги:
      1. javac + d8        -> classes2.dex из patch/fixsrc
      2. apktool b app     -> build/unsigned.apk
      3. classes2.dex внутрь APK
      4. zipalign -f 4
      5. apksigner         (если найден ключ; иначе APK останется неподписанным)

    Инструменты берутся из .toolchain (см. tools/setup-toolchain.ps1).

.PARAMETER VersionName
    Переопределить versionName (по умолчанию — из app/apktool.yml).

.PARAMETER VersionCode
    Переопределить versionCode (по умолчанию — из app/apktool.yml).

.PARAMETER OutFile
    Куда положить APK. По умолчанию dist\okei-schedule-v<версия>.apk.

.PARAMETER Toolchain
    Папка с инструментами. По умолчанию .toolchain.

.PARAMETER Keystore
    Путь к ключу. Если не задан: $env:SYLLABUS_KEYSTORE, иначе keystore\syllabus.keystore.

.PARAMETER KeystorePassFile
    Файл с паролем (первая строка). Если не задан: $env:SYLLABUS_KEYSTORE_PASS_FILE,
    иначе keystore\keystore-pass.txt.

.PARAMETER KeystorePassword
    Пароль строкой. Не рекомендуется: остаётся в истории PowerShell.

.EXAMPLE
    .\build.ps1

.EXAMPLE
    $env:SYLLABUS_KEYSTORE = "D:\keys\syllabus.keystore"
    $env:SYLLABUS_KEYSTORE_PASS_FILE = "D:\keys\pass.txt"
    .\build.ps1 -VersionName 21.0 -VersionCode 2100
#>
[CmdletBinding()]
param(
    [string]$VersionName,
    [string]$VersionCode,
    [string]$OutFile,
    [string]$Toolchain = '',
    [string]$Keystore = '',
    [string]$KeystorePassFile = '',
    [string]$KeystorePassword = ''
)

$ErrorActionPreference = 'Stop'

$root     = $PSScriptRoot
if (-not $Toolchain) { $Toolchain = Join-Path $root '.toolchain' }
$work     = Join-Path $root 'build'
$distDir  = Join-Path $root 'dist'
$logsDir  = Join-Path $root 'logs'
$patchDir = Join-Path $root 'patch'
$ymlPath  = Join-Path $root 'app\apktool.yml'

function Fail([string]$Message) {
    Write-Host "ОШИБКА: $Message" -ForegroundColor Red
    exit 1
}

function Step([string]$Text) { Write-Host "==> $Text" -ForegroundColor Cyan }

function Get-RepoRelative([string]$Path) {
    $full = [System.IO.Path]::GetFullPath($Path)
    $base = [System.IO.Path]::GetFullPath($root)
    if ($full.StartsWith($base, [System.StringComparison]::OrdinalIgnoreCase)) {
        return ($full.Substring($base.Length).TrimStart('\') -replace '\\', '/')
    }
    return $full
}

function Repair-ZipHeaders([string]$Path) {
    # apktool 2.11.1 помечает записи флагом bit 3 (data descriptor), но сам дескриптор
    # не пишет: aapt2 и часть zip-читалок на этом падают. Если дескриптора нет —
    # снимаем флаг, размеры и CRC в локальном заголовке уже корректные.
    $bytes = [System.IO.File]::ReadAllBytes($Path)
    $eocd = -1
    for ($i = $bytes.Length - 22; $i -ge [Math]::Max(0, $bytes.Length - 70000); $i--) {
        if ($bytes[$i] -eq 0x50 -and $bytes[$i + 1] -eq 0x4b -and $bytes[$i + 2] -eq 0x05 -and $bytes[$i + 3] -eq 0x06) {
            $eocd = $i; break
        }
    }
    if ($eocd -lt 0) { throw "EOCD не найден в $Path" }

    $count = [BitConverter]::ToUInt16($bytes, $eocd + 10)
    $offset = [BitConverter]::ToUInt32($bytes, $eocd + 16)
    $cleared = 0
    for ($k = 0; $k -lt $count; $k++) {
        $flags = [BitConverter]::ToUInt16($bytes, $offset + 8)
        $csize = [BitConverter]::ToUInt32($bytes, $offset + 20)
        $nlen = [BitConverter]::ToUInt16($bytes, $offset + 28)
        $elen = [BitConverter]::ToUInt16($bytes, $offset + 30)
        $clen = [BitConverter]::ToUInt16($bytes, $offset + 32)
        $lho = [BitConverter]::ToUInt32($bytes, $offset + 42)

        if ($flags -band 8) {
            $lnlen = [BitConverter]::ToUInt16($bytes, $lho + 26)
            $lelen = [BitConverter]::ToUInt16($bytes, $lho + 28)
            $dataStart = $lho + 30 + $lnlen + $lelen
            $desc = 0
            if ($dataStart + $csize + 4 -le $bytes.Length) {
                $desc = [BitConverter]::ToUInt32($bytes, $dataStart + $csize)
            }
            if ($desc -ne 0x08074b50) {
                $nf = [uint16]($flags -band (-bnot 8))
                $bytes[$offset + 8] = [byte]($nf -band 0xFF)
                $bytes[$offset + 9] = [byte](($nf -shr 8) -band 0xFF)
                $lf = [BitConverter]::ToUInt16($bytes, $lho + 6)
                $nlf = [uint16]($lf -band (-bnot 8))
                $bytes[$lho + 6] = [byte]($nlf -band 0xFF)
                $bytes[$lho + 7] = [byte](($nlf -shr 8) -band 0xFF)
                $cleared = $cleared + 1
            }
        }
        $offset += 46 + $nlen + $elen + $clen
    }
    [System.IO.File]::WriteAllBytes($Path, $bytes)
    return [int]$cleared
}

$java      = Join-Path $Toolchain 'jdk\bin\java.exe'
$javac     = Join-Path $Toolchain 'jdk\bin\javac.exe'
$btDir     = Join-Path $Toolchain 'build-tools'
$aapt2     = Join-Path $btDir 'aapt2.exe'
$zipalign  = Join-Path $btDir 'zipalign.exe'
$apksigner = Join-Path $btDir 'apksigner.bat'
$androidJar = Join-Path $Toolchain 'platform\android.jar'
$apktoolJar = Join-Path $Toolchain 'apktool.jar'

foreach ($tool in @($java, $javac, $aapt2, $zipalign, $apksigner, $androidJar, $apktoolJar)) {
    if (-not (Test-Path $tool)) { Fail "Не найден инструмент: $tool — запусти tools\setup-toolchain.ps1" }
}

$env:JAVA_HOME = Join-Path $Toolchain 'jdk'
$env:PATH = "$($env:JAVA_HOME)\bin;$btDir;$env:PATH"

# --- подпись -------------------------------------------------------------------
$keystorePath = $Keystore
if (-not $keystorePath) { $keystorePath = $env:SYLLABUS_KEYSTORE }
if (-not $keystorePath) { $keystorePath = Join-Path $root 'keystore\syllabus.keystore' }

$passFile = $KeystorePassFile
if (-not $passFile) { $passFile = $env:SYLLABUS_KEYSTORE_PASS_FILE }
if (-not $passFile) { $passFile = Join-Path $root 'keystore\keystore-pass.txt' }

$signing = $true
if (-not (Test-Path $keystorePath)) {
    $signing = $false
}
if ($signing -and -not $KeystorePassword -and -not (Test-Path $passFile)) {
    Fail "Найден ключ $keystorePath, но нет файла с паролем: $passFile"
}

# --- версия --------------------------------------------------------------------
$ymlBytes = [System.IO.File]::ReadAllBytes($ymlPath)
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)
$ymlOriginal = $utf8NoBom.GetString($ymlBytes).TrimStart([char]0xFEFF)
$verName = ([regex]::Match($ymlOriginal, 'versionName:\s*(\S+)')).Groups[1].Value
$verCode = ([regex]::Match($ymlOriginal, 'versionCode:\s*(\S+)')).Groups[1].Value
if (-not $verName -or -not $verCode) { Fail "Не удалось прочитать версию из app\apktool.yml" }

$ymlText = $ymlOriginal
if ($VersionName) { $ymlText = [regex]::Replace($ymlText, 'versionName:\s*\S+', "versionName: $VersionName"); $verName = $VersionName }
if ($VersionCode) { $ymlText = [regex]::Replace($ymlText, 'versionCode:\s*\S+', "versionCode: $VersionCode"); $verCode = $VersionCode }

if (Test-Path $work) { Remove-Item $work -Recurse -Force }
New-Item -ItemType Directory -Force -Path $work, $distDir, $logsDir | Out-Null

$log = New-Object System.Collections.Generic.List[string]
$log.Add("# Сборка Syllabus $verName ($verCode)")
$log.Add("Дата: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')")
$log.Add("")

try {
    if ($ymlText -ne $ymlOriginal) {
        [System.IO.File]::WriteAllText($ymlPath, $ymlText, $utf8NoBom)
        $log.Add("Версия переопределена: $verName ($verCode)")
    }

    Step "1/6 Java-патчи (javac + d8)"
    & (Join-Path $patchDir 'recompile.ps1') -Toolchain $Toolchain
    if ($LASTEXITCODE -ne 0) { Fail "recompile.ps1 завершился с кодом $LASTEXITCODE" }
    $dex = Join-Path $patchDir 'dexout\classes.dex'
    if (-not (Test-Path $dex)) { Fail "Не собран $dex" }
    Copy-Item $dex (Join-Path $work 'classes2.dex') -Force
    $log.Add("classes2.dex: $((Get-Item $dex).Length) байт")

    Step "2/6 apktool b (smali + ресурсы)"
    $unsigned = Join-Path $work 'unsigned.apk'
    & $java -jar $apktoolJar b (Join-Path $root 'app') -o $unsigned --use-aapt2
    if ($LASTEXITCODE -ne 0) { Fail "apktool b завершился с кодом $LASTEXITCODE" }
    if (-not (Test-Path $unsigned)) { Fail "apktool не создал $unsigned" }

    Step "3/6 добавление classes2.dex"
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    $zip = [System.IO.Compression.ZipFile]::Open($unsigned, 'Update')
    $existing = $zip.GetEntry('classes2.dex')
    if ($existing) { $existing.Delete() }
    [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile(
        $zip, (Join-Path $work 'classes2.dex'), 'classes2.dex',
        [System.IO.Compression.CompressionLevel]::Optimal) | Out-Null
    $zip.Dispose()

    Step "4/6 ремонт zip-заголовков"
    $cleared = Repair-ZipHeaders $unsigned
    $log.Add("zip: снят флаг data descriptor у $cleared записей")
    Write-Host "    снят флаг у $cleared записей"

    Step "5/6 zipalign"
    $aligned = Join-Path $work 'aligned.apk'
    & $zipalign -f 4 $unsigned $aligned
    if ($LASTEXITCODE -ne 0) { Fail "zipalign завершился с кодом $LASTEXITCODE" }

    $result = $aligned
    if ($signing) {
        Step "6/6 apksigner"
        $signed = Join-Path $work 'signed.apk'
        $plainPass = $KeystorePassword
        if (-not $plainPass) { $plainPass = (Get-Content $passFile -Raw).Trim() }
        # Пароль передаётся через переменную окружения: в списке процессов его нет.
        $env:SYLLABUS_KS_PASS = $plainPass
        try {
            & $apksigner sign --ks $keystorePath --ks-pass "env:SYLLABUS_KS_PASS" --key-pass "env:SYLLABUS_KS_PASS" --out $signed $aligned
            $signExit = $LASTEXITCODE
        }
        finally {
            Remove-Item Env:SYLLABUS_KS_PASS -ErrorAction SilentlyContinue
        }
        if ($signExit -ne 0) { Fail "apksigner sign завершился с кодом $signExit" }

        $verifyOut = & $apksigner verify --print-certs $signed 2>&1
        if ($LASTEXITCODE -ne 0) { Fail "подпись не прошла проверку: $verifyOut" }
        $result = $signed
        $log.Add("подпись: $keystorePath")
    }
    else {
        Step "6/6 подпись пропущена (ключ не найден)"
        $log.Add("подпись: пропущена, APK неподписанный")
    }

    & $zipalign -c 4 $result | Out-Null
    $alignedOk = ($LASTEXITCODE -eq 0)

    $badgingOut = & $aapt2 dump badging $result 2>&1
    if ($LASTEXITCODE -ne 0) { Fail "aapt2 не смог прочитать APK: $badgingOut" }
    $badging = ($badgingOut | Select-String -Pattern '^package:' | Select-Object -First 1).Line

    if ($OutFile) {
        $target = if ([System.IO.Path]::IsPathRooted($OutFile)) { $OutFile } else { Join-Path $root $OutFile }
        New-Item -ItemType Directory -Force -Path (Split-Path -Parent $target) | Out-Null
    }
    else {
        $suffix = if ($signing) { '.apk' } else { '-unsigned.apk' }
        $target = Join-Path $distDir "okei-schedule-v$verName$suffix"
    }
    Copy-Item $result $target -Force

    $hash = (Get-FileHash $target -Algorithm SHA256).Hash
    $size = (Get-Item $target).Length

    $log.Add("")
    $log.Add("APK: $(Get-RepoRelative $target)")
    $log.Add("Размер: $size байт")
    $log.Add("SHA-256: $hash")
    $log.Add("Выравнивание 4 байта: $alignedOk")
    $log.Add("badging: $badging")
    $log.Add("")
    $log.Add("РЕЗУЛЬТАТ: OK")

    Write-Host ""
    Write-Host "Готово: $(Get-RepoRelative $target)" -ForegroundColor Green
    Write-Host "  $badging"
    Write-Host "  SHA-256: $hash"
    if (-not $signing) { Write-Host "  APK не подписан: ключ не найден" -ForegroundColor Yellow }
}
catch {
    $log.Add("ОШИБКА: $($_.Exception.Message)")
    Set-Content -Path (Join-Path $logsDir 'last-run.txt') -Value $log -Encoding UTF8
    throw
}
finally {
    if ($ymlText -ne $ymlOriginal) {
        [System.IO.File]::WriteAllBytes($ymlPath, $ymlBytes)
    }
    Set-Content -Path (Join-Path $logsDir 'last-run.txt') -Value $log -Encoding UTF8
}
