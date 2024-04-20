[PowerShell]::Create([InitialSessionState]::CreateDefault2()).
    AddCommand('Get-PSSnapIn').Invoke().Name
