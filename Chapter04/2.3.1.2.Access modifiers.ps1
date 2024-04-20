$File = New-Item NewFile.txt -Force
$File.Name = 'NewName'

# Expects output:
# 
# InvalidOperation: 'Name' is a ReadOnly property.
