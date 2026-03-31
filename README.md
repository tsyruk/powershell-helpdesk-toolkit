<h1>PowerShell Help Desk Toolkit</h1>

<p>
  A beginner-friendly PowerShell toolkit for common IT support tasks such as system information collection,
  network checks, temporary file cleanup, disk monitoring, event log review, user profile inspection,
  and internet connectivity testing.
</p>

<h2>Overview</h2>

<p>
  This project was built to practice real-world entry-level IT support tasks using PowerShell.
  The scripts are designed to help with basic troubleshooting, system maintenance, and routine support work on Windows machines.
</p>

<p>
  The toolkit focuses on practical tasks commonly used in help desk and junior IT support roles,
  such as collecting system information, checking connectivity, reviewing logs, cleaning temporary files,
  and identifying storage issues.
</p>

<h2>Scripts Included</h2>

<h3>1. Get-SystemInfo.ps1</h3>
<p>Collects basic system information that can be useful during troubleshooting.</p>

<p><strong>What it checks:</strong></p>
<ul>
  <li>Computer name</li>
  <li>Operating system</li>
  <li>Processor</li>
  <li>RAM</li>
  <li>Disk information</li>
  <li>Network details</li>
</ul>

<p><strong>Use case:</strong><br>
Use this script when gathering device details before troubleshooting or escalation.
</p>

<p><strong>Example output:</strong></p>
<pre><code>Computer Name : DESKTOP-123ABC
OS            : Windows 11 Pro
Processor     : Intel(R) Core(TM) i7
RAM           : 16 GB
</code></pre>

<hr>

<h3>2. Test-NetworkHealth.ps1</h3>
<p>Performs simple network checks to help diagnose connectivity issues.</p>

<p><strong>What it checks:</strong></p>
<ul>
  <li>Basic network connection status</li>
  <li>Ping test</li>
  <li>Adapter or IP-related information</li>
</ul>

<p><strong>Use case:</strong><br>
Use this script when a user reports internet or network connection problems.
</p>

<p><strong>Example output:</strong></p>
<pre><code>Ping to google.com successful
IPv4 Address: 192.168.1.25
Default Gateway: 192.168.1.1
</code></pre>

<hr>

<h3>3. Clear-TempFiles.ps1</h3>
<p>Removes temporary files to help free up space and improve system cleanliness.</p>

<p><strong>What it does:</strong></p>
<ul>
  <li>Clears temporary file locations</li>
  <li>Helps reduce unnecessary clutter</li>
</ul>

<p><strong>Use case:</strong><br>
Use this script during routine maintenance or when troubleshooting slow system performance caused by temporary file buildup.
</p>

<p><strong>Example output:</strong></p>
<pre><code>Temporary files cleared successfully
Space recovered: 245 MB
</code></pre>

<hr>

<h3>4. Get-DiskHealth.ps1</h3>
<p>Checks local drive storage usage and flags low disk space.</p>

<p><strong>What it checks:</strong></p>
<ul>
  <li>Drive letter</li>
  <li>Volume name</li>
  <li>Total disk size</li>
  <li>Used space</li>
  <li>Free space</li>
  <li>Free space percentage</li>
</ul>

<p><strong>Use case:</strong><br>
Use this script when troubleshooting low storage, slow performance, or preparing a machine for software installation.
</p>

<p><strong>Example output:</strong></p>
<pre><code>Disk Health Report
==================

Drive: C:
Volume Name: Windows
Total Size: 475.21 GB
Used Space: 390.14 GB
Free Space: 85.07 GB
Free Space Percentage: 17.9%
Caution: Disk space is getting low
</code></pre>

<hr>

<h3>5. Get-EventLogSummary.ps1</h3>
<p>Displays a summary of recent warning, error, and critical events from the System and Application logs.</p>

<p><strong>What it checks:</strong></p>
<ul>
  <li>Recent warning events</li>
  <li>Recent error events</li>
  <li>Recent critical events</li>
  <li>Event source</li>
  <li>Event ID</li>
  <li>Timestamp</li>
  <li>Short event message summary</li>
</ul>

<p><strong>Use case:</strong><br>
Use this script when reviewing recent system issues during troubleshooting.
</p>

<p><strong>Example output:</strong></p>
<pre><code>Log: System

Time: 03/31/2026 10:31:57
Event ID: 10016
Level: Warning
Source: Microsoft-Windows-DistributedCOM
Message: The application-specific permission settings do not grant Local Activation permission...
</code></pre>

<hr>

<h3>6. Get-UserProfileInfo.ps1</h3>
<p>Displays basic information about the currently logged-in user and local profile paths.</p>

<p><strong>What it checks:</strong></p>
<ul>
  <li>Username</li>
  <li>Computer name</li>
  <li>Full Windows identity</li>
  <li>User profile path</li>
  <li>Home drive</li>
  <li>Desktop path</li>
  <li>Documents path</li>
  <li>Profile last modified date</li>
</ul>

<p><strong>Use case:</strong><br>
Use this script when checking user environment details during support tasks.
</p>

<p><strong>Example output:</strong></p>
<pre><code>Username: Margarita
Computer Name: DESKTOP-123ABC
Full Identity: DESKTOP-123ABC\Margarita
User Profile Path: C:\Users\Margarita
Desktop Path: C:\Users\Margarita\Desktop
Documents Path: C:\Users\Margarita\Documents
</code></pre>

<hr>

<h3>7. Test-InternetConnection.ps1</h3>
<p>Tests DNS resolution and basic internet connectivity to common websites.</p>

<p><strong>What it checks:</strong></p>
<ul>
  <li>DNS resolution</li>
  <li>Ping success/failure</li>
  <li>Basic access to external hosts</li>
</ul>

<p><strong>Use case:</strong><br>
Use this script when diagnosing internet access or name resolution issues.
</p>

<p><strong>Example output:</strong></p>
<pre><code>Testing: google.com
DNS Resolution: Success
Resolved IP: 142.250.190.14
Ping Test: Success
</code></pre>

<h2>Requirements</h2>
<ul>
  <li>Windows PowerShell or PowerShell 7</li>
  <li>Windows operating system</li>
  <li>Administrator privileges may be required for some actions depending on system settings</li>
</ul>

<h2>Notes</h2>
<ul>
  <li>Review scripts before running them in a production environment</li>
  <li>Some actions may require administrator privileges</li>
  <li>The temp file cleanup script should be used carefully to avoid deleting files needed by active applications</li>
  <li>These scripts are intended for educational, lab, and entry-level support practice</li>
</ul>

<h2>How to Run</h2>

<ol>
  <li>Clone or download this repository</li>
  <li>Open PowerShell</li>
  <li>Navigate to the project folder</li>
  <li>Run any script using the following format:</li>
</ol>

<pre><code>.\Get-SystemInfo.ps1
</code></pre>

<p>Other examples:</p>

<pre><code>.\Test-NetworkHealth.ps1
.\Clear-TempFiles.ps1
.\Get-DiskHealth.ps1
.\Get-EventLogSummary.ps1
.\Get-UserProfileInfo.ps1
.\Test-InternetConnection.ps1
</code></pre>

<h2>Example Use Cases</h2>
<ul>
  <li>Gather system details before escalating a support ticket</li>
  <li>Check network connectivity during troubleshooting</li>
  <li>Clean temporary files during basic workstation maintenance</li>
  <li>Review disk usage before software installation</li>
  <li>Inspect recent event logs after system errors</li>
  <li>Verify user profile paths and environment details</li>
  <li>Test internet access and DNS resolution</li>
</ul>

<h2>What I Learned</h2>
<ul>
  <li>Writing beginner PowerShell scripts</li>
  <li>Using scripting for IT support and troubleshooting tasks</li>
  <li>Organizing scripts into a reusable toolkit</li>
  <li>Thinking through practical help desk workflows</li>
  <li>Documenting technical work in a clear, portfolio-ready format</li>
</ul>

<h2>Future Improvements</h2>
<ul>
  <li>Export results to text or CSV reports</li>
  <li>Add error handling and logging</li>
  <li>Create a menu-based launcher script</li>
  <li>Add user account management tools</li>
  <li>Add service status checks</li>
  <li>Add software inventory reporting</li>
  <li>Add automated health check summaries</li>
</ul>

<h2>License</h2>
<p>This project was created for educational and portfolio purposes.</p>
