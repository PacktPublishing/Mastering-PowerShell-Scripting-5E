$processes = @(Get-Process -ID $PID)
Get-Member -InputObject $Processes

# Expects output:
# 
#    TypeName: System.Object[]
# ...
