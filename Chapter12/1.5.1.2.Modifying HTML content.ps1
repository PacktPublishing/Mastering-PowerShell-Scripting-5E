[PSCustomObject]@{
    Name   = 'Name'
    Values = 'First', 'Second'
} | Select-Object Name, @{
    Name = 'Values'; Expression = { $_.Values -join ', ' }
} | ConvertTo-Html
