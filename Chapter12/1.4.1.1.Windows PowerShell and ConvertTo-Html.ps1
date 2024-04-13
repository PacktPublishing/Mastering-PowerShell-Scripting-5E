Get-Process pwsh, powershell -ErrorAction Ignore |
    Select-Object Name -First 2 |
    ConvertTo-Html

# Expects output:
# 
# <tr><th>Name</th></tr>