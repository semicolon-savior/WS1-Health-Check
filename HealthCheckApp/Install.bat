@echo off
setlocal

:: === Config ===
set EXE_NAME=HealthCheckApp.exe
set CONFIG_NAME=config.json
set INSTALL_DIR=C:\ProgramData\HealthCheck
set SHORTCUT_NAME=Health Check Tool.lnk
set DESKTOP_SHORTCUT=%PUBLIC%\Desktop\%SHORTCUT_NAME%
set STARTMENU_DIR=%ProgramData%\Microsoft\Windows\Start Menu\Programs\Health Check Tool
set STARTMENU_SHORTCUT=%STARTMENU_DIR%\%SHORTCUT_NAME%

:: === Create directories ===
if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"
if not exist "%STARTMENU_DIR%" mkdir "%STARTMENU_DIR%"

:: === Copy EXE ===
copy /Y "%~dp0%EXE_NAME%" "%INSTALL_DIR%\%EXE_NAME%"

:: === Copy config.json ===
if exist "%~dp0%CONFIG_NAME%" (
    copy /Y "%~dp0%CONFIG_NAME%" "%INSTALL_DIR%\%CONFIG_NAME%"
) else (
    echo ⚠️ config.json not found in source folder!
)

:: === Create Desktop Shortcut ===
powershell -ExecutionPolicy Bypass -Command "($sc=(New-Object -ComObject WScript.Shell).CreateShortcut('%DESKTOP_SHORTCUT%'));$sc.TargetPath='%INSTALL_DIR%\%EXE_NAME%';$sc.WorkingDirectory='%INSTALL_DIR%';$sc.IconLocation='%INSTALL_DIR%\%EXE_NAME%,0';$sc.Save()"

:: === Create Start Menu Shortcut ===
powershell -ExecutionPolicy Bypass -Command "($sc=(New-Object -ComObject WScript.Shell).CreateShortcut('%STARTMENU_SHORTCUT%'));$sc.TargetPath='%INSTALL_DIR%\%EXE_NAME%';$sc.WorkingDirectory='%INSTALL_DIR%';$sc.IconLocation='%INSTALL_DIR%\%EXE_NAME%,0';$sc.Save()"

exit /b 0
