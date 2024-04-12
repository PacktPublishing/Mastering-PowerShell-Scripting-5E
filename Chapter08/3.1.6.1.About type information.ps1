Get-Process -Id $pid |
    Select-Object Name, Id, Path |
    ConvertTo-Csv

# Expects output:
# 
# #TYPE Selected.System.Diagnostics.Process
# "Name","Id"
# "powershell","21828"
