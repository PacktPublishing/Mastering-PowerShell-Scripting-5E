Get-CimInstance -Query "SELECT * FROM Win32_Process WHERE ProcessID=$PID" 

# Expects output:
# 
# ProcessId Name     HandleCount WorkingSetSize VirtualSize
# --------- ----     ----------- -------------- -----------
# 78684     pwsh.exe 1344        98746368       2481049194496
