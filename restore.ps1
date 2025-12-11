$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if (-not $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit
}

$processList = @("SamsungSystemSupportEngine", "SamsungSystemSupportService")

foreach ($procName in $processList) {
    if (Get-Process -Name $procName -ErrorAction SilentlyContinue) {
        Stop-Process -Name $procName -Force -ErrorAction SilentlyContinue
        Start-Sleep -Seconds 1
    } else {
        Write-Host "done: $procName"
    }
}

$services = @("SamsungSystemSupportEngine Service", "SamSysSupSvc")

foreach ($svc in $services) {
    sc.exe stop "$svc" | Out-Null
    sc.exe delete "$svc" 
}

$startupFile = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\GalaxyBookMaskPlus_startup.bat"
if (Test-Path $startupFile) {
    Remove-Item -Path $startupFile -Force -ErrorAction SilentlyContinue
}

$driverFolder = "C:\SamSysSupSvc"
if (Test-Path $driverFolder) {
    Write-Host "deleting: $driverFolder"
    try {
        Remove-Item -Path $driverFolder -Recurse -Force -ErrorAction Stop
        Write-Host "done."
    } catch {
        Write-Warning "error: $_"
    }
} else {
    Write-Host "done: $driverFolder"
}

Read-Host
