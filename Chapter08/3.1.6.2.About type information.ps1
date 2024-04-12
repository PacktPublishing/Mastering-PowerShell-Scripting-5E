Get-Process -Id $pid |
    Select-Object Name, Id |
    ConvertTo-Csv -NoTypeInformation
