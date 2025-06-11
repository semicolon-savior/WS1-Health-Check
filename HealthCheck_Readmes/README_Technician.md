# Health Check Tool – Technician Instructions

## Purpose
Used to verify device is online, checking in to Workspace ONE UEM, and has Windows Updates Installed. This allows users or admins to quickly verify device status, esepcially for devices that may be offline for extended periods of time. 

## How to Launch
- Via desktop shortcut
- Or Start Menu > Programs > Health Check Tool

## What Happens Automatically
1. Detects device serial number, hostname, user
2. Checks internet connectivity
3. Validates Workspace ONE API access
4. Verifies device enrollment status
5. Verfies device is checking in
6. If needed, reinstalls Workspace ONE Hub silently
7. Checks and installs Windows Updates
8. Logs output and writes audit info to registry
9. Displays a final success/failure message

## Notes
- No input is required from the technician
- Windows Update may take 10–30+ minutes
- A reboot will be prompted if required
