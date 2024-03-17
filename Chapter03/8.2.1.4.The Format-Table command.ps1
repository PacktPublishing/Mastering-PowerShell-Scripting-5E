Get-Process | Format-Table -Property @(
    'Name'
    @{ Name = 'Started'; Expression = { $_.StartTime } }
)
