Write-Host "=== Help Desk System Information Tool ===" -ForegroundColor Cyan

$computerName = $env:COMPUTERNAME
$currentUser = $env:USERNAME
$os = Get-CimInstance Win32_OperatingSystem
$bios = Get-CimInstance Win32_BIOS
$cpu = Get-CimInstance Win32_Processor
$ram = Get-CimInstance Win32_ComputerSystem
$disk = Get-CimInstance Win32_LogicalDisk -Filter "DeviceID='C:'"

Write-Host ""
Write-Host "Computer Name: $computerName"
Write-Host "Current User: $currentUser"
Write-Host "OS: $($os.Caption)"
Write-Host "Version: $($os.Version)"
Write-Host "Serial Number: $($bios.SerialNumber)"
Write-Host "CPU: $($cpu.Name)"
Write-Host ("RAM (GB): {0:N2}" -f ($ram.TotalPhysicalMemory / 1GB))
Write-Host ("Free Disk Space on C: (GB): {0:N2}" -f ($disk.FreeSpace / 1GB))
Write-Host ("Total Disk Size on C: (GB): {0:N2}" -f ($disk.Size / 1GB))