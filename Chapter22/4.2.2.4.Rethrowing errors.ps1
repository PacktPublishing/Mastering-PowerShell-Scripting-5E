Get-Error |
    Select-Object CategoryInfo, FullyQualifiedErrorId |
    Format-List

# Expects output:
# 
# CategoryInfo          : OperationStopped: (Error:String) [],
#                         RuntimeException
# FullyQualifiedErrorId : Error
