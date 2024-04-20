[string]$variable = 'Hello world'

$attribute = (Get-Variable variable).Attributes |
    Where-Object TypeId -match 'ArgumentTypeConverterAttribute'

$attribute.GetType().
    GetProperties('Instance,NonPublic').
    GetMethod.Invoke($attribute, @())

# Expects output:
# 
# IsPublic IsSerial Name                      BaseType
# -------- -------- ----                      --------
# True     True     String                    System.Object
