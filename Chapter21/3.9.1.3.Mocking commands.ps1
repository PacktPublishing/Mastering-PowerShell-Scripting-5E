Mock Import-Csv -ModuleName ServiceState {
    [PSCustomObject]@{
        Name = 'service1'
        ExpectedStatus = 'Running'
    }
}
