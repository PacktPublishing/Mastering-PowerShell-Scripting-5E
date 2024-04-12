[PSCustomObject]@{
    Name  = 'David'
    Phone = '0123456789'
    Age   = 28
} | ConvertTo-Csv -QuoteFields Phone
