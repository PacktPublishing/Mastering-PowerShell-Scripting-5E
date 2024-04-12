$csv = @(
    "Name,Phone,Age"
    "David,0123456789,28"
) | ConvertFrom-Csv
$csv | Get-Member Age

# Expects output:
# 
#    TypeName: System.Management.Automation.PSCustomObject
# 
# Name MemberType   Definition
# ---- ----------   ----------
# Age  NoteProperty string Age=28
