Write-Host "=== Help Desk Network Health Check ===" -ForegroundColor Green

$targets = @("8.8.8.8", "google.com", "github.com")

foreach ($target in $targets) {
    Write-Host ""
    Write-Host "Testing connection to $target ..."

    $result = Test-Connection -ComputerName $target -Count 2 -Quiet

    if ($result) {
        Write-Host "SUCCESS: $target is reachable" -ForegroundColor Green
    }
    else {
        Write-Host "FAILURE: $target is not reachable" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "IP Configuration Summary:" -ForegroundColor Cyan
Get-NetIPConfiguration | Format-Table InterfaceAlias, IPv4Address, IPv4DefaultGateway -AutoSize