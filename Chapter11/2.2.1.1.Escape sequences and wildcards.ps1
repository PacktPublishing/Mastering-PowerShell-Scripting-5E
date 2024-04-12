Get-CimInstance Win32_Process -Filter "ExecutablePath='C:\\Windows\\Explorer.exe'" 

# Expects output:
# 
# ProcessId Name         HandleCount WorkingSetSize VirtualSize
# --------- ----         ----------- -------------- -----------
# 8320      explorer.exe 3412        198606848      2204322111488
