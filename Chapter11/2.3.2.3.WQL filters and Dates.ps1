$params = @{
    ClassName = 'Win32_UserProfile'
    Filter    = 'Special=FALSE AND LastUseTime<{0}’ -f
        $date
}
Get-CimInstance @params | Remove-CimInstance -WhatIf
