(Get-Process pwsh, powershell |
    Select-Object Name -First 2 |
    ConvertTo-Html) -replace '\*', 'Name'
