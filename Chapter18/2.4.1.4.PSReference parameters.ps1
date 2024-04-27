$dateTime = Get-Date
Test-Date 01/01/2024 -DateTime ([Ref]$dateTime)
$dateTime

# Expects output:
# 
# True
# 01 January 2024 00:00:00
