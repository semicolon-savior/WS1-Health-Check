# Health Check Tool – Admin Guide

## Overview
The Health Check Tool performs post-provisioning validation of Windows endpoints using Workspace ONE API and Windows Update.

## Admin Mode
To access Admin Mode:
1. Launch the app.
2. Press Ctrl + Shift + A
3. Enter the admin password from `config.json`

## Features
- Edit API config (URL, tenant code, username, password)
- Update log and registry paths
- Toggle optional checks (e.g., Windows Update)
- Test Workspace ONE API connectivity
- Live config reload without restarting the app

## Config File
- File: `config.json`
- Deployed to: `C:\ProgramData\HealthCheck`
- Format: JSON with Base64-encoded credentials
- Modifiable through Admin Mode or directly on disk
