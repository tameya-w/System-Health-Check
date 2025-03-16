# System Health Check using PowerShell

## Project Summary
This project is a **PowerShell script** that checks the system's health by monitoring uptime, CPU & RAM usage, disk space, and network connectivity. The script logs the results into a text file for easy reference.

## Features & Why They Matter
✅ **Checks System Uptime** – Shows how long your computer has been running since the last restart. This helps identify if a system has been running too long without a restart, which can cause slowdowns or crashes.  
✅ **Monitors CPU & RAM Usage** – Tracks how much processing power and memory your system is using. High CPU or memory usage can indicate performance issues, potential system overload, or a need for upgrades.  
✅ **Reports Disk Space Availability** – Checks how much free space is left on your drives. Running low on disk space can slow down a computer, cause errors, and prevent software from working properly.  
✅ **Tests Network Connectivity** – Pings a website to confirm if your internet is working. This helps quickly diagnose if internet issues are related to the computer or the network itself.  
✅ **Generates a Log File** – Saves all the system health details in a text file for easy reference. This is useful for troubleshooting recurring issues or tracking performance trends over time.  

Monitoring these metrics helps **prevent problems before they become major issues** and ensures your system runs efficiently!

## Languages Used
- PowerShell

## Environments Used
- Windows 11 Home / Windows Server

## Technology & Applications Used
- PowerShell scripting
- Windows Task Scheduler (for automation, optional)


## How to Use
### 1. Download & Run the Script
1. **Copy or download** this repository.
![Screenshot 2025-03-15 110145](https://github.com/user-attachments/assets/26c95ef6-1cd7-47dc-b4f3-8383bcf59132)

2. Open **PowerShell** and navigate to the script location.
![Screenshot 2025-03-15 112455](https://github.com/user-attachments/assets/da4064c0-3f21-4c33-a41f-b99c19247e4c)
To open PowerShell, click on the Start Menu, search for 'PowerShell,' right-click it, and select 'Run as Administrator'.

3. Run the script using:
   ```powershell
   .\SystemHealthCheck.ps1
   ```
   ![Screenshot 2025-03-15 112621](https://github.com/user-attachments/assets/480fe494-ba82-4cbf-b2fd-8806ca63f54c)
Once inside PowerShell, navigate to the folder where the script is saved:
```powershell
cd C:\Path\To\Script
 ```
Then run the script with:
 ```powershell
   .\SystemHealthCheck.ps1
   ```


4. View the generated log file at `C:\SystemHealthCheck.log`.

   ![Screenshot 2025-03-15 112738](https://github.com/user-attachments/assets/dcb3907c-078c-4267-96fb-5816010c03a8)
Open File Explorer, then go in the C: Drive

   ![Screenshot 2025-03-15 112808](https://github.com/user-attachments/assets/300a75ac-9ba4-4613-81d3-eae85346e113)
Your log file is ready!


   


### 2. Automate with Task Scheduler (Optional)
1. Open **Task Scheduler** and create a new task.
![Screenshot 2025-03-15 112844](https://github.com/user-attachments/assets/30b688e0-1961-4577-8a9e-baddfe791b6f) ![Screenshot 2025-03-15 112929](https://github.com/user-attachments/assets/8d24c950-849c-4d71-802e-7f5075b62abb) ![Screenshot 2025-03-15 112951](https://github.com/user-attachments/assets/f7336376-79e5-4768-add7-905653726b09)

Open the Start Menu, search for Task Scheduler, then right-click and select 'Run as Administrator' to ensure you have the necessary permissions. Once open, on the right hand side click 'Create Task'. In the General tab, name your task, set security parameters, and select your operating system. 


2. Set it to run `powershell.exe -File "C:\Path\To\SystemHealthCheck.ps1"`.
![Screenshot 2025-03-15 113630](https://github.com/user-attachments/assets/830954f9-69c9-4334-ae16-f50909aee759)

 ![Screenshot 2025-03-15 113652](https://github.com/user-attachments/assets/04bb855c-9ea5-4589-921f-4272367dba97)
 
Next, in the Actions tab, click 'New', then enter the following command to run the script: `powershell.exe -File \"C:\Path\To\SystemHealthCheck.ps1\"`  


3. Schedule it to run daily or weekly.

![Screenshot 2025-03-15 113247](https://github.com/user-attachments/assets/597fcf0b-f235-468e-9a5d-e1fc8c952b88) ![Screenshot 2025-03-15 113459](https://github.com/user-attachments/assets/4ef7800a-afb2-4733-b2ce-af96a664dec5)

Finally, in the Triggers tab, set when and how often the script should run. For example, scheduling it to run once a day helps ensure regular system monitoring.


![Screenshot 2025-03-15 113920](https://github.com/user-attachments/assets/a877ed15-0076-41ca-b9ed-a805f7d3ff46)

🎉 Success! Your automated system health check is now scheduled and running! 🚀


