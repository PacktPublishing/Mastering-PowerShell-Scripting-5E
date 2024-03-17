@{ Name = 'Value' } -as [PSCustomObject] | Get-Member

# Expects output:
# 
#    TypeName: System.Collections.Hashtable
# 
# Name              MemberType            Definition
# ----              ----------            ----------
# Add               Method                void Add(System.Obje…
# Clear             Method                void Clear(), void I…
# Clone             Method                System.Object Clone(…
