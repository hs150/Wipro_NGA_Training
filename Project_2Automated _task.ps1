# AutomationTask.ps1

#  Timestamp
Write-Host "`n=== Automation Task Started at $(Get-Date) ===`n"

#  Step 1: Identify High CPU Usage Processes
Write-Host " Checking for processes using more than 100 seconds of CPU time..."
$highCpuProcesses = Get-Process | Where-Object { $_.CPU -gt 100 } | Select-Object Name, CPU

if ($highCpuProcesses) {
    Write-Host "`n High CPU Processes Detected:"
    $highCpuProcesses | Format-Table -AutoSize
} else {
    Write-Host "No high CPU processes found."
}

#  Step 2: Clean Temporary Files
$tempPath = "$env:TEMP"
Write-Host "`n Cleaning temporary files in: $tempPath"

try {
    Get-ChildItem -Path $tempPath -Recurse -Force -ErrorAction SilentlyContinue |
    Remove-Item -Force -Recurse -ErrorAction SilentlyContinue
    Write-Host "Temporary files deleted successfully."
} catch {
    Write-Host " Error deleting temp files: $($_.Exception.Message)"
}

# Completion Message
Write-Host "`n=== Automation Task Completed at $(Get-Date) ===`n"