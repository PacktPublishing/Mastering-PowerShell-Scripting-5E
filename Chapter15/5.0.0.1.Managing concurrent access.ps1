$script = {
    param (
        $Path,
        $RunspaceName
    )

    # Some long running activity

    $message = '{0:HH:mm:ss.fff}: Writing from runspace {1}' -f @(
        Get-Date
        $RunspaceName
    )
    [System.IO.File]::AppendAllLines(
        $Path,
        [string[]]$message
    )
}
