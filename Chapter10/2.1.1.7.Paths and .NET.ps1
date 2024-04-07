$path = 'file.txt'
$path = $ExecutionContext.SessionState.
    Path.
    GetUnresolvedProviderPathFromPSPath($path)
