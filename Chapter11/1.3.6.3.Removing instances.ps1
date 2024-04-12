$params = @{
    ClassName = 'Win32_UserProfile'
    Filter    = 'Special=FALSE'
}
Get-CimInstance @params |
    Where-Object LastUseTime -lt (Get-Date).AddDays(-90) |
    Remove-CimInstance -WhatIf
