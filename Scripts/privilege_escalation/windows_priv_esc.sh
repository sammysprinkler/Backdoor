# Windows Privilege Escalation
# This script checks for common privilege escalation vectors on Windows systems.

Write-Host "Checking for unquoted service paths..."
Get-WmiObject win32_service | Select-Object Name, DisplayName, PathName, StartMode | Where-Object { $_.PathName -match ' ' }

Write-Host "Checking for weak permissions on services..."
Get-WmiObject win32_service | ForEach-Object { sc.exe qc $_.Name }
