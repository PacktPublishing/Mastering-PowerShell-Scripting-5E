Get-SmbShareAccess -Name WmiPerms

# Expects output:
# 
# Name      ScopeName  AccountName  AccessControlType  AccessRight
# ----      ---------  -----------  -----------------  -----------
# WmiPerms  *          Everyone     Allow              Read
# WmiPerms  *          TITAN\Chris  Allow              Full
