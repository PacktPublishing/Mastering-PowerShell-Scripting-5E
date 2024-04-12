[PSCustomObject]@{
    Name     = 'David'
    FullName = 'Smith, David'
    Phone    = '0123456789'
    Age      = 28
} | ConvertTo-Csv -QuoteFields Phone |
    ConvertFrom-Csv

# Expects output:
# 
# Name  FullName Phone Age
# ----  -------- ----- ---
# David Smith    David 0123456789
