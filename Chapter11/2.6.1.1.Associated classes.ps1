Get-CimInstance CIM_ProcessExecutable |
    Where-Object Dependent -match $PID |
    Select-Object -First 1

# Expects output:
# 
# Antecedent         : CIM_DataFile (Name = "C:\Program Files\PowerShell\7\pwsh.exe")
# Dependent          : Win32_Process (Handle = "86864")
# BaseAddress        : 140697581191168
# GlobalProcessCount :
# ModuleInstance     : 3042508800
# ProcessCount       : 0
# PSComputerName     :
