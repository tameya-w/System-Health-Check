# System Health Check using PowerShell

## Project Summary
This project is a **PowerShell script** that checks the system's health by monitoring uptime, CPU & RAM usage, disk space, and network connectivity. The script logs the results into a text file for easy reference.

## Features
✅ Checks **System Uptime**  
✅ Monitors **CPU & RAM Usage**  
✅ Reports **Disk Space Availability**  
✅ Tests **Network Connectivity**  
✅ Generates a **log file** with system details  

## Languages Used
- PowerShell

## Environments Used
- Windows 11 Home / Windows Server

## Technology & Applications Used
- PowerShell scripting
- Windows Task Scheduler (for automation, optional)
- Event Viewer (for logging, optional)

## How to Use
### 1. Download & Run the Script
1. **Clone or download** this repository.
2. Open **PowerShell** and navigate to the script location.
3. Run the script using:
   ```powershell
   .\SystemHealthCheck.ps1
   ```
4. View the generated log file at `C:\SystemHealthCheck.log`.

### 2. Automate with Task Scheduler (Optional)
1. Open **Task Scheduler** and create a new task.
2. Set it to run `powershell.exe -File "C:\Path\To\SystemHealthCheck.ps1"`.
3. Schedule it to run daily or weekly.

## Media
### Screenshots
📸 **Script Execution Example:**  
_(Add a screenshot of running the script in PowerShell)_

📸 **Log File Output Example:**  
_(Add a screenshot of the generated log file)_


## Next Steps
- Expand functionality to send email alerts if system resources are low.
- Improve log formatting for easier reading.

## Author
**Tameya Williams**  
GitHub: [YourGitHubProfile](https://github.com/YourGitHubProfile)
