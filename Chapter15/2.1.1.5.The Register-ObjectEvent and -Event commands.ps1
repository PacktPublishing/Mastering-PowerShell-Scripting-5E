while ($true) {
    Wait-Event | Get-Event | ForEach-Object {
        $_.SourceEventArgs
        $_ | Remove-Event 
    }
}
