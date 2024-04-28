Test-WriteError -UseMethod
Get-Error | ForEach-Object CategoryInfo

# Expects output:
# 
# Test-WriteError: Error occurred
# 
# Category   : InvalidOperation
# Activity   : Test-WriteError
# Reason     : Exception
# TargetName :
# TargetType :
