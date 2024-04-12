$params = @{
    ClassName = 'Win32_LogicalShareSecuritySetting'
    Filter    = "Name='WmiPerms'"
}
$security = Get-CimInstance @params

# Expects output:
# 
# Caption        : Security settings of WmiPerms
# Description    : Security settings of WmiPerms
# SettingID      :
# ControlFlags   : 32772
# Name           : WmiPerms
# PSComputerName :
