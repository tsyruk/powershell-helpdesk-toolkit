# Get-DiskHealth.ps1
# Displays basic disk usage information for local drives

Write-Host "Disk Health Report" -ForegroundColor Cyan
Write-Host "==================" -ForegroundColor Cyan

$drives = Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3"

foreach ($drive in $drives) {
    $sizeGB = [math]::Round($drive.Size / 1GB, 2)
    $freeGB = [math]::Round($drive.FreeSpace / 1GB, 2)
    $usedGB = [math]::Round($sizeGB - $freeGB, 2)

    if ($drive.Size -gt 0) {
        $freePercent = [math]::Round(($drive.FreeSpace / $drive.Size) * 100, 2)
    } else {
        $freePercent = 0
    }

    Write-Host ""
    Write-Host "Drive: $($drive.DeviceID)"
    Write-Host "Volume Name: $($drive.VolumeName)"
    Write-Host "Total Size: $sizeGB GB"
    Write-Host "Used Space: $usedGB GB"
    Write-Host "Free Space: $freeGB GB"
    Write-Host "Free Space Percentage: $freePercent%"

    if ($freePercent -lt 15) {
        Write-Host "Warning: Low disk space" -ForegroundColor Red
    } elseif ($freePercent -lt 30) {
        Write-Host "Caution: Disk space is getting low" -ForegroundColor Yellow
    } else {
        Write-Host "Status: Disk space is healthy" -ForegroundColor Green
    }
}