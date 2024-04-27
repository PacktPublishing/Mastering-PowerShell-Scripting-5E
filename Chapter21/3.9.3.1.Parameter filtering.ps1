Mock Import-Csv @module {
    [PSCustomObject]@{
        Name           = 'service1'
        ExpectedStatus = 'Running'
    }
    [PSCustomObject]@{
        Name           = 'service2'
        ExpectedStatus = 'Running'
    }
    [PSCustomObject]@{
        Name           = 'service3'
        ExpectedStatus = 'Stopped'
    }
}
