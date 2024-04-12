[PSCustomObject]@{
    Name = 'Andrew'
    Classes = 'Science', 'Biology'
} | ConvertTo-Csv

# Expects output:
#
# "Name","Classes"
# "Andrew","System.Object[]"
