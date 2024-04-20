Get-Process -Id $PID | Get-Member -MemberType Property 

# Expects output:
# 
#    TypeName: System.Diagnostics.Process
# 
# Name                 MemberType Definition
# ----                 ---------- ----------
# BasePriority         Property   int BasePriority {get;}
# Container            Property   System.ComponentModel.IContai...
# EnableRaisingEvents  Property   bool EnableRaisingEvents {get...
# ExitCode             Property   int ExitCode {get;}
# ExitTime             Property   datetime ExitTime {get;}
