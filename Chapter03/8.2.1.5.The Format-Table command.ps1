Get-Process | Format-Table -Property @(
    @{ Expression = 'Name'; Width = 30 }
    @{ Name = 'Started'; Expression = 'StartTime' }
)
