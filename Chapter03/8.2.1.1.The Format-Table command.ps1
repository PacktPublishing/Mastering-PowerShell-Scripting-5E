Get-Process -Id $PID | Format-Table

# Expects output:
# 
#  NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
#  ------    -----      -----     ------      --  -- -----------
#     107   120.85     201.59       2.30    5512   1 pwsh
