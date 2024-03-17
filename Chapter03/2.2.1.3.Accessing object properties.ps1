Get-Process -Id $PID | Get-Member -Name StartTime

# Expects output:
# 
#    TypeName: System.Diagnostics.Process
# 
# Name      MemberType Definition
# ----      ---------- ----------
# StartTime Property   datetime StartTime {get;}
