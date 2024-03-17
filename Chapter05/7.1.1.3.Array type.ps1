$processes = Get-Process -Id $PID
$processes.GetType()

# Expects output:
# 
# IsPublic IsSerial Name      BaseType
# -------- -------- ----      --------
# True     False    Process   System.ComponentModel.Component
