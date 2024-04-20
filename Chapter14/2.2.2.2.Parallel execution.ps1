$params = @{
    ComputerName  = $computerNames
    ThrottleLimit = 200
    ScriptBlock   = {
        Get-Service dnscache
    }
}
Invoke-Command @params

# Expects output:
# 
# Status   Name        DisplayName             PSComputerName
# ------   ----        -----------             --------------
# Running  dnscache    DNS Client              Computer1
# Running  dnscache    DNS Client              Computer2
# Running  dnscache    DNS Client              Computer3
# Stopped  dnscache    DNS Client              Computer4
