Set-Content file.txt -Value 'Hello world'
Get-Content file.txt | Select-Object PS*

# Expects output:
# 
# PSPath       : C:\temp\file.txt
# PSParentPath : C:\temp
# PSChildName  : file.txt
# PSDrive      : C
# PSProvider   : Microsoft.PowerShell.Core\FileSystem
