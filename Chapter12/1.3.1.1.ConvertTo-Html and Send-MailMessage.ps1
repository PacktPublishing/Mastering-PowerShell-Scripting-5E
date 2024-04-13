$messageBody = Get-Process |
    ConvertTo-Html Name, Id, WorkingSet -Head $css |
    Out-String
