[PowerShell]::Create().
    AddCommand('Get-Process').AddParameter('ID',$PID).
    AddStatement().
    AddCommand('Get-Service').
    AddCommand('Select-Object').AddParameter('First', 1).
    Invoke()

# Expects output:
# 
# NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
#  ------    -----      -----     ------      --  -- -----------
#     123   143.61     240.43       2.33    9472   2 pwsh
# 
# Status      : Stopped
# Name        : Service name
# DisplayName : Service display name
