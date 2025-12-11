:: https://t.me/ZGQinc
@echo off

echo Please run as administrator.
set "params=%*" && cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/c cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B)

setlocal

set "processList=SamsungSystemSupportEngine.exe SamsungSystemSupportService.exe"

for %%P in (%processList%) do (
    taskkill /f /im %%P >nul 2>&1
    tasklist | find /i "%%P" >nul && (
        timeout /t 1 >nul
        taskkill /f /im %%P >nul 2>&1
    )
)

sc stop SamSysSupSvc >nul 2>&1
sc delete SamSysSupSvc >nul 2>&1
sc stop "SamsungSystemSupportEngine Service" >nul 2>&1
sc delete "SamsungSystemSupportEngine Service" >nul 2>&1
del /f /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\GalaxyBookMaskPlus_startup.bat" >nul 2>&1
rmdir /s /q "C:\SamSysSupSvc"

pause
exit