Mock Get-Service -ModuleName ServiceState {
    [PSCustomObject]@{
        Status = 'Stopped'
    }
}
