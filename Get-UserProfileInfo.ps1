# Get-UserProfileInfo.ps1
# Displays basic information about the currently logged-in user profile

Write-Host "User Profile Information" -ForegroundColor Cyan
Write-Host "========================" -ForegroundColor Cyan

try {
    $currentUser = [System.Security.Principal.WindowsIdentity]::GetCurrent()
    $userName = $env:USERNAME
    $computerName = $env:COMPUTERNAME
    $userProfilePath = $env:USERPROFILE
    $homeDrive = $env:HOMEDRIVE
    $homePath = $env:HOMEPATH
    $desktopPath = [Environment]::GetFolderPath("Desktop")
    $documentsPath = [Environment]::GetFolderPath("MyDocuments")

    Write-Host "Username: $userName"
    Write-Host "Computer Name: $computerName"
    Write-Host "Full Identity: $($currentUser.Name)"
    Write-Host "User Profile Path: $userProfilePath"
    Write-Host "Home Drive: $homeDrive"
    Write-Host "Home Path: $homePath"
    Write-Host "Desktop Path: $desktopPath"
    Write-Host "Documents Path: $documentsPath"

    if (Test-Path $userProfilePath) {
        $profileFolder = Get-Item $userProfilePath
        Write-Host "Profile Last Modified: $($profileFolder.LastWriteTime)"
    }
}
catch {
    Write-Host "Unable to retrieve user profile information." -ForegroundColor Red
    Write-Host $_.Exception.Message
}