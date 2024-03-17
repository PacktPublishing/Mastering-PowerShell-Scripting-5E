Get-Process -ID $PID |
    Select-Object Name, Id |
    Export-Csv .\Processes.csv
