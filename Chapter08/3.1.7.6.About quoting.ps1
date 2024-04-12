$content = [PSCustomObject]@{
    Name  = 'David'
    Phone = '0123456789'
    Age   = 28
}
($content | ConvertTo-Csv) -replace '"' |
    Set-Content file.csv
