﻿[wmi]"Win32_Process.Handle=$PID" | Select-Object Name, Handle

# Expects output:
# 
# Name     Handle
# ----     ------
# pwsh.exe 11672 
