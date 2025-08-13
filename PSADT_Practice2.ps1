
#Using Execute-MSI for MSI Installation:
 
Execute-MSI -Action Install -Path "D:\Wipro\Tools\Toolkit\Files\googlechromestandaloneenterprise64.msi" -LogName "MyPackageInstallLog" 

 
# Using Execute-MSI for MSP Patching: 
 
Execute-MSI -Action Patch -Path <#"C:\MyApps\MyPatch.msp"    Cureently no msp available#> -LogName "MyPatchLog"

 
# Using Execute-MSI for MSI Uninstallation:


Execute-MSI -Action Uninstall -Path "[PRODUCTCODE]" -LogName "MyPackageUninstallLog"

#Using Execute process
Execute-Process -Path 'notepad.exe' -Parameters '/silent /norestart' -WindowStyle 'Hidden'

#Install MSupdates
Install-MSUpdates -Path "$dirFiles\Updates" -IgnoreReboot

#Active Setup
Register-ActiveSetup -StubExePath "$dirSupportFiles\MyStub.exe" -Key 'MyAppActiveSetup' -Version '1.0.0' -Arguments '/configure'

#Copying Normal FIle
Copy-File -Path "D:\Wipro\Example\1.txt" -Destination "D:\Wipro\Example\Tools"

#Removing a file
Remove-Folder -Path "D:\Wipro\Example\Tools\1.txt" -ContinueOnError $true

#moving a file
Move-File -Path "D:\Wipro\Example\1.txt" -Destination "$envProgramData\App\Logs"

#starting a process
Start-Process 'notepad.exe' -ArgumentList "/i App.msi /qn /norestart" -Wait

#Starting a service
Start-Service -Name 'ALG'

#Stopping a service
Stop-Service -Name "ALG" -Force


