Test-WriteError
Get-Error | ForEach-Object CategoryInfo

# Expects output:
# 
# Test-WriteError: Error occurred
# 
# Category   : InvalidOperation
# Activity   : Write-Error
# Reason     : Exception
# TargetName :
# TargetType :
