(Get-Content file.txt) |
    Where-Object { $_ -eq 'first' } |
    Set-Content file.txt
