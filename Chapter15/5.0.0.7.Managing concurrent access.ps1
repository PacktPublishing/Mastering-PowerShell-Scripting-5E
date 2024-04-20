$script = {
    param (
        $Path,
        $RunspaceName,
        $Mutex
    )

    # Some long running activity

    $mutex.WaitOne()
    $message = '{0:HH:mm:ss.fff}: Writing from runspace {1}' -f @(
        Get-Date
        $RunspaceName
    )
    [System.IO.File]::AppendAllLines(
        $Path,
        [string[]]$message
    )
    $Mutex.ReleaseMutex()
}
