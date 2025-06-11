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

### Option 1 – Registry
- Path: `HKLM\SOFTWARE\Omnissa\HealthCheck`
- Value: `InstalledVersion = 1.0`

### Option 2 – File
- Exists: `C:\ProgramData\HealthCheck\HealthCheckApp.exe`

## Notes
- Shortcuts are created automatically
- Config is copied during install
- Works silently and requires no user interaction
