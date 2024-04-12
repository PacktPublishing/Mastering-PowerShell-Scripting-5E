[PSCustomObject]@{
    Name = 'Andrew'
    Classes = 'Science', 'Biology'
} | Select-Object -Property @(
    'Name'
    @{ Name = 'Classes'; Expression = { $_.Classes -join ', ' }}
) | ConvertTo-Csv

# Expects output:
#
# "Name","Classes"
# "Andrew","Science, Biology"
