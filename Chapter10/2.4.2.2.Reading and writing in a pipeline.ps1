Get-Content file.txt |
    Where-Object { $_ -eq 'first' } |
    Set-Content file.txt

# Expects output:
# 
# Set-Content: The process cannot access the file 'C:\temp\file.txt' because it is being used by another process.
