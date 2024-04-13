$property = $xml.Objects.Object.Property |
    Where-Object Name -eq WorkingSet
$property.'#text'.GetType()

# Expects output:
# 
# IsPublic IsSerial Name                   BaseType
# -------- -------- ----                   --------
# True     True     String                 System.Object
