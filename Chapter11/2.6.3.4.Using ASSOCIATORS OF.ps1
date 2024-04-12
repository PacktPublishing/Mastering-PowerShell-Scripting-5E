$params = @{
    Query = "ASSOCIATORS OF {Win32_Process.Handle=$PID} " +
        “WHERE ResultClass = CIM_DATAFILE”
}
Get-CimInstance @params | Select-Object Name

# Expects output:
# 
# Name 
# ---- 
# C:\Program Files\PowerShell\7\pwsh.exe
# C:\WINDOWS\SYSTEM32\ntdll.dll
# C:\WINDOWS\System32\KERNEL32.DLL
# C:\WINDOWS\System32\KERNELBASE.dll
# C:\WINDOWS\System32\USER32.dll
# C:\WINDOWS\System32\win32u.dll 
