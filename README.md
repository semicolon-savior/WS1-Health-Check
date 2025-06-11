# WS1-Health-Check
# Health Check Tool

The Health Check Tool is a lightweight, technician-facing Windows app designed to validate device readiness. It ensures that devices are properly enrolled in Workspace ONE, checking in, and up to date with critical software and OS updates.

## ✅ Purpose

To streamline basic device checks and reduce manual troubleshooting by automating:

- Enrollment validation
- Workspace ONE check-in confirmation
- Workspace ONE Hub recovery
- Windows Updates
- Audit logging for support teams

## 🔧 Key Features 

- 🔍 **Auto-detects device serial number, hostname, and user**
- 🌐 **Checks internet connectivity**
- 🔐 **Verifies Workspace ONE API connectivity**
- 📡 **Looks up the device in Workspace ONE by serial number**
- 🕐 **Polls for LastSeen check-in every 30 seconds for 5 minutes**
- ♻️ **Reinstalls Intelligent Hub if check-in fails**
- 🪟 **Runs Windows Updates**
- 📝 **Logs all steps to a persistent log file**
- 🧾 **Writes status and metadata to the Windows Registry**
- 💬 **Displays a final Pass/Fail result to the technician**

## 🖥️ User Experience

The tool is fully automated after launch:
- No technician input is required
- All activity is visible via status messages
- A result summary appears at the end

## 📂 Output Locations

| Type            | Location                                                |
|------------------|---------------------------------------------------------|
| Executable       | `C:\ProgramData\HealthCheck\HealthCheckApp.exe`         |
| Config file      | `C:\ProgramData\HealthCheck\config.json`                |
| Log file         | `C:\ProgramData\HealthCheck\Logs\HealthCheck.log`       |
| Registry key     | `HKLM\SOFTWARE\HealthCheck`                              |

## ⚙️ Configuration

All behavior is controlled via `config.json`, including:
- API credentials
- Feature toggles (e.g., Windows Update)
- Log and registry paths

Admins can modify the config using a built-in Admin Mode (`Ctrl + Shift + A`).

## 🚀 Deployment

The app can be deployed via Workspace ONE as a Win32 application using a bundled `Install.bat` script. This script handles:

- Copying the `.exe` and `config.json` to the correct folder
- Creating desktop and Start Menu shortcuts
- Writing version metadata to the registry

---

For admin setup, technician usage, and Workspace ONE deployment instructions, see:

-Deployment README
-Admin README
-Technician README
