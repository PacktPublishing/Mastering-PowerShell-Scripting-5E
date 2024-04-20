Get-Process -Id $pid > process.txt
Get-Content process.txt 

# Expects output:
# 
# NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
#  ------    -----      -----     ------      --  -- -----------
#      78   144.69     186.91      12.69   15284   1 pwsh 
