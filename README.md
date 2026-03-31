# PowerShell Help Desk Toolkit

A beginner-friendly PowerShell toolkit for common IT support tasks such as system information collection, network checks, and temporary file cleanup.

## Overview

This project was built to practice real-world entry-level IT support tasks using PowerShell. The scripts are designed to help with basic troubleshooting, system maintenance, and routine support work on Windows machines.

## Scripts Included

### 1. Get-SystemInfo.ps1
Collects basic system information that can be useful during troubleshooting.

**What it checks:**
- Computer name
- Operating system
- Processor
- RAM
- Disk information
- Network details

**Use case:**
Use this script when gathering device details before troubleshooting or escalation.

---

### 2. Test-NetworkHealth.ps1
Performs simple network checks to help diagnose connectivity issues.

**What it checks:**
- Basic network connection status
- Ping test
- Adapter or IP-related information

**Use case:**
Use this script when a user reports internet or network connection problems.

---

### 3. Clear-TempFiles.ps1
Removes temporary files to help free up space and improve system cleanliness.

**What it does:**
- Clears temporary file locations
- Helps reduce unnecessary clutter

**Use case:**
Use this script during routine maintenance or when troubleshooting slow system performance caused by temporary file buildup.

---
### 4. Get-DiskHealth.ps1

Checks local drive storage usage and flags low disk space.

**What it checks:**
- Drive letter
- Volume name
- Total disk size
- Used space
- Free space
- Free space percentage

**Use case:**
Use this script when troubleshooting low storage, slow performance, or preparing a machine for software installation.
## Requirements

- Windows PowerShell or PowerShell 7
- Windows operating system
- Administrator privileges may be required for some actions depending on system settings (Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass)

## How to Run

1. Clone or download this repository
2. Open PowerShell
3. Navigate to the project folder
4. Run a script using:

```powershell
.\Get-SystemInfo.ps1
