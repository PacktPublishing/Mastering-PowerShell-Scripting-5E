$properties = [Ordered]@{}
$string -split '\n' | Where-Object {
    $_ -match '^(?<Key>[^:]+): (?<Value>.+)$'
} | ForEach-Object {
    $properties[$matches['Key']] = $matches['Value']
}
[PSCustomObject]$properties

# Expects output:
# 
# Name   Job title    Language   Level
# ----   ---------    --------   -----
# Ruth   Programmer   C#         Senior
