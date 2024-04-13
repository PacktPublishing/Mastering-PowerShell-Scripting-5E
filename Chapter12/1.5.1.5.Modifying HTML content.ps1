$content = [PSCustomObject]@{
    Name   = 'Name'
    Values = 'First', 'Second'
} | Select-Object Name, @{
    Name = 'Values'; Expression = { $_.Values -join '%BR%' }
} | ConvertTo-Html
$content -replace '%BR%', '<br />' |
    Set-Content file.html
