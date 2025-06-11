# Health Check Tool – Technician Instructions

## Purpose
Used to verify post-provisioning health of a Windows device after imaging or Workspace ONE enrollment.

## How to Launch
- Via desktop shortcut
- Or Start Menu > Programs > Health Check Tool

## What Happens Automatically
1. Detects device serial number, hostname, user
2. Checks internet connectivity
3. Validates Workspace ONE API access
4. Verifies device enrollment status
5. Waits up to 5 mins for Workspace ONE check-in
6. If needed, reinstalls Workspace ONE Hub
7. Optionally installs Windows Updates (if enabled)
8. Logs output and writes audit info to registry
9. Displays a final success/failure message

## Notes
- No input is required from the technician
- Windows Update may take 10–30+ minutes
- A reboot will be prompted if required
