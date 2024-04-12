$params = @{
    ClassName = 'Win32_Process'
    Filter    = 'Name="msedge.exe" OR ' +
        'Name="firefox.exe" OR ' +
        'Name="chrome.exe"'
}
Get-CimInstance @params
