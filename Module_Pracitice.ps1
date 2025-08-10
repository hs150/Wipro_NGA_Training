Get-NetIPConfiguration | Out-File D:\Wipro\Example\1.txt -Append

Get-NetIPConfiguration | Out-File -FilePath D:\Wipro\Example\netfileconfigs

Get-Service| Out-File D:\Wipro\Example\processfile -Append

Get-PSDrive -PSProvider FileSystem | Out-File D:\Wipro\Example\datefile.txt -Append

Get-Command | Out-File D:\Wipro\Example\datefile.txt -Append

Get-PSDrive -PSProvider FileSystem | Out-File D:\Wipro\Example\datefile.txt -Append

Get-ChildItem | Out-File D:\Wipro\Example\datefile.txt -Append

Get-Service | Out-File D:\Wipro\Example\opfilecommands.txt -Append



Get-CimInstance Win32_OperatingSystem

Get-Command Get-CimInstance

Get-Help Get-CimInstance

Import-Module BitsTransfer

Get-Command Install-Module, Install-PSResource

Get-Module

Get-Module -ListAvailable

Get-Command -Module Appx

Remove-Module BitsTransfer

Get-Command Get-Date, Get-Help -All | Select-Object -Property Name, CommandType, Module ,PSSnapIn
    
Remove-Item Function:Get-Date

Get-CimClass *network* | Sort CimClassName

Get-WmiObject -Class Win32_Keyboard

Get-WmiObject -Namespace root -List | Out-File D:\Wipro\Example\Namespace.txt -Append 

Get-WmiObject -Namespace root\cimv2 -List | Sort Name

Get-WmiObject -Namespace root\CIMv2 -List | Out-File D:\Wipro\Example\cimv2.txt -Append 

Get-WmiObject -Namespace root\cimv2 -List | Sort Name | Out-File D:\Wipro\Example\sortcimv2.txt -Append

Get-CimClass -Namespace root\CIMv2 | Sort CimClassName

Get-WmiObject -Class CIM_Chip

Get-WmiObject -ClassName CIM_InstalledOS

Get-CimInstance -Class Win32_LogicalDisk

Get-WmiObject -Class Win32_LogicalDisk

Get-WmiObject -Class Win32_LogicalDisk -Filter "DriveType=3"

Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3"

Get-WmiObject -Query "SELECT * FROM Win32_LogicalDisk WHERE DriveType = 3"

Get-CimInstance -Query "SELECT * FROM Win32_LogicalDisk WHERE DriveType = 3"

