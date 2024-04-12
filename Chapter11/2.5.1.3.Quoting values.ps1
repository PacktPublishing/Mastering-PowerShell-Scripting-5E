Get-CimInstance Win32_Process -Filter "ProcessId=$PID" 
Get-CimInstance Win32_Process -Filter "ExecutablePath LIKE '$($PSHome -replace '\\', '\\')%'" 
