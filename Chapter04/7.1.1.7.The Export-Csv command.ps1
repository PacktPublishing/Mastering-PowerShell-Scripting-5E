Get-Process powershell | Select-Object Name, Id | ConvertTo-Csv

# Expects output:
# 
# #TYPE Selected.System.Diagnostics.Process
# "Name","Id"
# "pwsh","404"
