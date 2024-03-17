$variable | Get-Member | Select-Object -First 1

# Expects output:
# 
#    TypeName: System.String
# 
# Name  MemberType Definition
# ----  ---------- ----------
# Clone Method     System.Object Clone(), System.Object ICloneab...
