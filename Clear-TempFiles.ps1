Write-Host "=== Help Desk Temp File Cleanup ===" -ForegroundColor Yellow

$tempPath = $env:TEMP

Write-Host "Temp folder path: $tempPath"
Write-Host "Calculating files before cleanup..."

$beforeCount = (Get-ChildItem -Path $tempPath -Force -ErrorAction SilentlyContinue | Measure-Object).Count
Write-Host "Items before cleanup: $beforeCount"

Get-ChildItem -Path $tempPath -Force -ErrorAction SilentlyContinue | Remove-Item -Force -Recurse -ErrorAction SilentlyContinue

$afterCount = (Get-ChildItem -Path $tempPath -Force -ErrorAction SilentlyContinue | Measure-Object).Count
Write-Host "Items after cleanup: $afterCount"

Write-Host "Cleanup complete." -ForegroundColor Green