# Test-InternetConnection.ps1
# Tests basic internet connectivity and DNS resolution

Write-Host "Internet Connection Test" -ForegroundColor Cyan
Write-Host "========================" -ForegroundColor Cyan

$testHosts = @(
    "google.com",
    "cloudflare.com",
    "github.com"
)

foreach ($hostName in $testHosts) {
    Write-Host ""
    Write-Host "Testing: $hostName" -ForegroundColor Yellow

    try {
        $dnsResult = Resolve-DnsName $hostName -ErrorAction Stop | Select-Object -First 1
        Write-Host "DNS Resolution: Success"
        Write-Host "Resolved IP: $($dnsResult.IPAddress)"
    }
    catch {
        Write-Host "DNS Resolution: Failed" -ForegroundColor Red
        continue
    }

    try {
        $pingResult = Test-Connection -ComputerName $hostName -Count 2 -Quiet -ErrorAction Stop
        if ($pingResult) {
            Write-Host "Ping Test: Success" -ForegroundColor Green
        } else {
            Write-Host "Ping Test: Failed" -ForegroundColor Red
        }
    }
    catch {
        Write-Host "Ping Test: Failed" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "Internet connection test complete."