# PowerShell Help Desk Toolkit

## Overview
This project is a beginner-friendly PowerShell toolkit I built for common IT support and help desk tasks. It has scripts for collecting system information, testing network connectivity, and cleaning temporary files.

## Why I Built This
I created this project to practice real-world entry-level IT tasks using PowerShell and Windows administration tools. The goal was to build small scripts that reflect tasks a help desk technician might perform during troubleshooting.

## Skills Demonstrated
- PowerShell scripting
- Windows system administration
- Basic troubleshooting automation
- Network connectivity testing
- File system cleanup
- Technical documentation

## Scripts Included

### 1. Get-SystemInfo.ps1
Collects:
- computer name
- current user
- Windows version
- BIOS serial number
- CPU
- RAM
- C: drive space

### 2. Test-NetworkHealth.ps1
Checks:
- connectivity to common targets
- basic network reachability
- local IP configuration

### 3. Clear-TempFiles.ps1
Performs:
- temp folder cleanup
- before/after item counting
- basic file maintenance

## How to Run
Open PowerShell in the project folder and run:

```powershell
.\Get-SystemInfo.ps1
.\Test-NetworkHealth.ps1
.\Clear-TempFiles.ps1