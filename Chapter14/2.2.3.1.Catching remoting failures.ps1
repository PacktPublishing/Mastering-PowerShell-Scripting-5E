$params = @{
    ComputerName  = $computerNames
    ThrottleLimit = 200
    ScriptBlock   = {
        Get-Service dnscache
    }
    ErrorAction   = 'SilentlyContinue'
    ErrorVariable = 'failure'
}
$success = Invoke-Command @params
