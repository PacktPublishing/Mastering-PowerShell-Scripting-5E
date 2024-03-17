Get-Process -Id $PID | Get-Member

# Expects output:
# 
#     TypeName: System.Diagnostics.Process
# 
# Name               MemberType     Definition
# ----               ----------     ----------
# Handles            AliasProperty  Handles = Handlecount
# Name               AliasProperty  Name = ProcessName
# NPM                AliasProperty  NPM = NonpagedSystemMemorySize64
# PM                 AliasProperty  PM = PagedMemorySize64
# SI                 AliasProperty  SI = SessionId
