$path = 'file.txt'
$provider = $null
$drive = $null
$ExecutionContext.SessionState.
    Path.
    GetUnresolvedProviderPathFromPSPath(
        $path,
        [ref]$provider,
        [ref]$drive
    )
