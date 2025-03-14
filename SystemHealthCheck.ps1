# PowerShell Script: System Health Check

# Define Log File Location
$logFile = "C:\SystemHealthCheck.log"

# Get System Uptime
$uptime = (Get-CimInstance Win32_OperatingSystem).LastBootUpTime
$uptimeFormatted = "System Uptime: " + ((Get-Date) - $uptime).ToString("g")

# Get CPU Usage
$cpuUsage = (Get-Counter '\Processor(_Total)\% Processor Time').CounterSamples.CookedValue
$cpuFormatted = "CPU Usage: {0:N2}%" -f $cpuUsage

# Get RAM Usage
$mem = Get-CimInstance Win32_OperatingSystem
$ramUsage = "RAM Usage: {0:N2}%" -f ((($mem.TotalVisibleMemorySize - $mem.FreePhysicalMemory) / $mem.TotalVisibleMemorySize) * 100)

# Get Disk Space Usage
$disk = Get-PSDrive -PSProvider FileSystem | Where-Object { $_.Used -gt 0 }
$diskInfo = $disk | ForEach-Object { "Drive {0}: {1:N2}% Used ({2:N2} GB Free)" -f $_.Root, (($_.Used / $_.Used + $_.Free) * 100), ($_.Free / 1GB) }

# Check Network Connectivity (Ping Google DNS)
$networkStatus = if (Test-Connection -ComputerName 8.8.8.8 -Count 1 -Quiet) { "Network: Online" } else { "Network: Offline" }

# Write Results to Log File
$logContent = @(
    "===== System Health Check Report =====",
    (Get-Date).ToString(),
    "=====================================",$uptimeFormatted,
    $cpuFormatted,
    $ramUsage,
    $diskInfo,
    $networkStatus,
    "====================================="
)

$logContent | Out-File -FilePath $logFile -Encoding utf8

# Display Results to User
$logContent
