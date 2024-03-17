[PSCustomObject]@{ Name = 'Value' } | Get-Member

# Expects output:
# 
#    TypeName: System.Management.Automation.PSCustomObject
# 
# Name        MemberType   Definition
# ----        ----------   ----------
# Equals      Method       bool Equals(System.Object obj)
# GetHashCode Method       int GetHashCode()
# GetType     Method       type GetType()
# ToString    Method       string ToString()
# Name        NoteProperty string Name=Value
