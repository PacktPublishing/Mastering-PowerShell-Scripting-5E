function Get-EmptyOutput { return $null }
Get-EmptyOutput | Get-InputObject 

# Expects output:
# 
# Get-InputObject: Cannot bind argument to parameter 'InputObject' because it is null.
