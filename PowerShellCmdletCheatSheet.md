#  PowerShell Cmdlet Cheat Sheet

A quick reference guide to essential PowerShell cmdlets, organized by category with short usage examples.

---

##  Basic Cmdlets

| Cmdlet         | Description                          | Example |
|----------------|--------------------------------------|---------|
| `Get-Help`     | Displays help info for cmdlets       | `Get-Help Get-Process` |
| `Get-Command`  | Lists all available cmdlets          | `Get-Command -Name *Item*` |
| `Get-Content`  | Reads content from a file            | `Get-Content .\log.txt` |
| `Set-Location` | Changes the current directory        | `Set-Location C:\Scripts` |
| `Clear-Host`   | Clears the console screen            | `Clear-Host` |

---

##  File System Cmdlets

| Cmdlet         | Description                          | Example |
|----------------|--------------------------------------|---------|
| `New-Item`     | Creates a new file or folder         | `New-Item -Path . -Name "notes.txt" -ItemType File` |
| `Copy-Item`    | Copies files or folders              | `Copy-Item .\notes.txt -Destination D:\Backup` |
| `Move-Item`    | Moves files or folders               | `Move-Item .\notes.txt D:\Archive` |
| `Remove-Item`  | Deletes files or folders             | `Remove-Item .\notes.txt -Force` |
| `Get-ChildItem`| Lists files and folders              | `Get-ChildItem C:\Users` |

---

##  Network Cmdlets

| Cmdlet              | Description                          | Example |
|---------------------|--------------------------------------|---------|
| `Test-Connection`   | Sends ICMP ping to a host            | `Test-Connection google.com` |
| `Get-NetIPAddress`  | Displays IP address configuration    | `Get-NetIPAddress` |
| `Get-NetAdapter`    | Lists network adapters               | `Get-NetAdapter` |
| `Resolve-DnsName`   | Resolves DNS name to IP              | `Resolve-DnsName microsoft.com` |

---

