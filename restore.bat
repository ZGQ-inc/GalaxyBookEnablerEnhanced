:: https://t.me/ZGQinc
@echo off

echo Please run as administrator.
set "params=%*" && cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/c cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B)

echo test
pause

@REM setlocal

@REM set "processList=SamsungSystemSupportEngine.exe SamsungSystemSupportService.exe"

@REM for %%P in (%processList%) do (
@REM     taskkill /f /im %%P >nul 2>&1
@REM     tasklist | find /i "%%P" >nul && (
@REM         timeout /t 1 >nul
@REM         taskkill /f /im %%P >nul 2>&1
@REM     )
@REM )

@REM sc stop SamSysSupSvc >nul 2>&1
@REM sc delete SamSysSupSvc >nul 2>&1
@REM sc stop "SamsungSystemSupportEngine Service" >nul 2>&1
@REM sc delete "SamsungSystemSupportEngine Service" >nul 2>&1
@REM del /f /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\GalaxyBookMaskPlus_startup.bat" >nul 2>&1
@REM rmdir /s /q "C:\SamSysSupSvc"

@REM pause
@REM exit