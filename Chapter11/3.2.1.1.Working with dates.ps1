$query = '
SELECT Name, CreationDate
FROM Win32_Process
WHERE ProcessId={0}
' -f $PID
([wmisearcher]$query).Get() | Select-Object Name, CreationDate

# Expects output:
# 
# Name     CreationDate
# ----     ------------
# pwsh.exe 20200510090416.263973+060
