[PSCustomObject].FullName
[System.Management.Automation.PSObject]@{ Name = 'Value' } | Get-Member

# Expects output:
# 
# System.Management.Automation.PSObject
# 
# 
#    TypeName: System.Collections.Hashtable
# 
# Name              MemberType            Definition
# ----              ----------            ----------
# Add               Method                void Add(System.Obje…
# Clear             Method                void Clear(), void I…
# Clone             Method                System.Object Clone(…
