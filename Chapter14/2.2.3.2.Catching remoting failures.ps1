$failure | Select-Object -Property @(
    @{ Name = 'ComputerName'; Expression = 'TargetObject' }
    @{ Name = 'Error'; Expression = { $_.ToString() } }
)
