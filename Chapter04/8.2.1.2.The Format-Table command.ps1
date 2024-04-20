Get-Process -Id $PID | Format-Table ProcessName, Path

# Expects output:
# 
# ProcessName Path
# ----------- ----
# pwsh        C:\Program Files\PowerShell\7\pwsh.exe
