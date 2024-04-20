Get-Process | Format-Table -Property @(
    @{ Expression = 'Name'; Width = 30 }
    @{ Expression = 'StartTime'; FormatString = '{0:HH:mm}' }
)
