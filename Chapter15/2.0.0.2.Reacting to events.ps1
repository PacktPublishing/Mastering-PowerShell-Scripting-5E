[System.IO.FileSystemWatcher]::new() |
    Get-Member -MemberType Event |
    Select-Object -ExpandProperty Name

# Expects output:
# 
# 
# Changed
# Created
# Deleted
# Disposed
# Error
# Renamed
