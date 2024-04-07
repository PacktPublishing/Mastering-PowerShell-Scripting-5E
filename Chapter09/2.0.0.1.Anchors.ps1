$env:PATH -split ';' | Where-Object { $_ -match '^C' } 

# Expects output:
# 
# C:\Program Files\PowerShell\7
# C:\windows\system32
# C:\windows
