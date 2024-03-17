Get-Process | Format-List -Property @(
    'Name'
    @{ Expression = 'StartTime'; FormatString = '{0:HH:mm}' }
)
