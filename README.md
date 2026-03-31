
# PowerShell Help Desk Toolkit

## Overview
I built a PowerShell help desk toolkit for common Windows support tasks. I can use it to gather system information, test connectivity, and clean temp files during basic troubleshooting. It’s designed for simple first-step diagnostics on Windows machines, with user permission.

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
