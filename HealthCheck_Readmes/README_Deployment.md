# Health Check Tool – Workspace ONE Deployment Guide

## Packaging Contents
- `Install.bat`
- `HealthCheckApp.exe`
- `config.json`

## Install Command
```
Install.bat
```

## Uninstall Command (Optional)
```
rmdir /s /q "C:\ProgramData\HealthCheck"
reg delete "HKLM\SOFTWARE\Omnissa\HealthCheck" /f
del "%PUBLIC%\Desktop\Health Check Tool.lnk"
del "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Health Check Tool\Health Check Tool.lnk"
```

## Detection Rule

### Option 1 – File
- Exists: `C:\ProgramData\HealthCheck\HealthCheckApp.exe`

## Notes
- Shortcuts are created automatically on Desktop and Start Menu
- Config is copied during install using the bat file
- Works silently and requires no user interaction
