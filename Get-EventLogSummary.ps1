# Get-EventLogSummary.ps1
# Displays a summary of recent System and Application event log entries

Write-Host "Event Log Summary" -ForegroundColor Cyan
Write-Host "=================" -ForegroundColor Cyan

$logNames = @("System", "Application")
$levelsToShow = @(1, 2, 3) # 1 = Critical, 2 = Error, 3 = Warning
$maxEvents = 10

foreach ($log in $logNames) {
    Write-Host ""
    Write-Host "Log: $log" -ForegroundColor Yellow

    try {
        $events = Get-WinEvent -LogName $log -MaxEvents 100 |
            Where-Object { $levelsToShow -contains $_.Level } |
            Select-Object -First $maxEvents TimeCreated, Id, LevelDisplayName, ProviderName, Message

        if ($events) {
            foreach ($event in $events) {
                Write-Host ""
                Write-Host "Time: $($event.TimeCreated)"
                Write-Host "Event ID: $($event.Id)"
                Write-Host "Level: $($event.LevelDisplayName)"
                Write-Host "Source: $($event.ProviderName)"
                Write-Host "Message: $($event.Message.Substring(0, [Math]::Min(120, $event.Message.Length)))..."
            }
        } else {
            Write-Host "No recent critical, error, or warning events found."
        }
    }
    catch {
        Write-Host "Could not read log: $log" -ForegroundColor Red
        Write-Host $_.Exception.Message
    }
}