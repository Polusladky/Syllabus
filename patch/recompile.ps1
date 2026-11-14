<#
.SYNOPSIS
    Компилирует Java-патчи из patch/fixsrc в patch/dexout/classes.dex (classes2.dex будущего APK).

.DESCRIPTION
    javac -source 8 -target 8 с bootclasspath android.jar, затем d8 --min-api 21.
    Пути берутся относительно репозитория, инструменты — из .toolchain
    (см. tools/setup-toolchain.ps1). Ничего вне репозитория не требуется.

.PARAMETER Toolchain
    Папка с инструментами (jdk, build-tools, platform). По умолчанию <repo>\.toolchain.
#>
[CmdletBinding()]
param(
    [string]$Toolchain = ''
)

$ErrorActionPreference = 'Stop'

$patchDir = $PSScriptRoot
if (-not $Toolchain) { $Toolchain = Join-Path (Split-Path -Parent $patchDir) '.toolchain' }
$fix      = Join-Path $patchDir 'fixsrc'
$stubs    = Join-Path $patchDir 'stubs'
$classes  = Join-Path $patchDir 'classes'
$dexout   = Join-Path $patchDir 'dexout'

$javac = Join-Path $Toolchain 'jdk\bin\javac.exe'
$d8    = Join-Path $Toolchain 'build-tools\d8.bat'
$androidJar = Join-Path $Toolchain 'platform\android.jar'

foreach ($tool in @($javac, $d8, $androidJar)) {
    if (-not (Test-Path $tool)) {
        Write-Host "ОШИБКА: не найден $tool — запусти tools\setup-toolchain.ps1" -ForegroundColor Red
        exit 1
    }
}

$env:JAVA_HOME = Join-Path $Toolchain 'jdk'
$env:PATH = "$($env:JAVA_HOME)\bin;$(Join-Path $Toolchain 'build-tools');$env:PATH"

Remove-Item $classes, $dexout -Recurse -Force -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force -Path $classes, $dexout | Out-Null

$sources = @(
    (Join-Path $fix 'ru\okei\timetable\fix\WeekGate.java'),
    (Join-Path $fix 'ru\okei\timetable\fix\GroupRefresh.java'),
    (Join-Path $fix 'ru\okei\timetable\fix\DateFix.java'),
    (Join-Path $fix 'ru\okei\timetable\fix\SettingsFooter.java'),
    (Join-Path $fix 'ru\okei\timetable\ui\InfoTimerView.java')
)

Write-Host "javac: $($sources.Count) файлов"
& $javac -encoding UTF-8 -source 8 -target 8 -bootclasspath $androidJar -sourcepath "$fix;$stubs" -d $classes @sources
if ($LASTEXITCODE -ne 0) {
    Write-Host "ОШИБКА: javac завершился с кодом $LASTEXITCODE" -ForegroundColor Red
    exit 1
}

$classFiles = @(Get-ChildItem (Join-Path $classes 'ru\okei\timetable\fix') -Filter *.class -ErrorAction SilentlyContinue) +
              @(Get-ChildItem (Join-Path $classes 'ru\okei\timetable\ui') -Filter 'InfoTimerView*.class' -ErrorAction SilentlyContinue)
if ($classFiles.Count -eq 0) {
    Write-Host "ОШИБКА: javac не создал классов" -ForegroundColor Red
    exit 1
}

$d8Args = @('--min-api', '21', '--lib', $androidJar, '--output', $dexout) + ($classFiles | ForEach-Object { $_.FullName })
& $d8 @d8Args
if ($LASTEXITCODE -ne 0) {
    Write-Host "ОШИБКА: d8 завершился с кодом $LASTEXITCODE" -ForegroundColor Red
    exit 1
}

$dex = Join-Path $dexout 'classes.dex'
if (-not (Test-Path $dex)) {
    Write-Host "ОШИБКА: d8 не создал classes.dex" -ForegroundColor Red
    exit 1
}

Write-Host "classes.dex: $((Get-Item $dex).Length) байт ($($classFiles.Count) классов)"
exit 0