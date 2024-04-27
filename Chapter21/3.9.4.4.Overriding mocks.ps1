It 'Service is running, expected stopped' {
    Mock Import-Csv @module {
        [PSCustomObject]@{
            Name           = 'service1'
            ExpectedStatus = 'Stopped'
        }
    }

    Set-ServiceState -Path file.csv

    Should -Not -Invoke Start-Service @module
    Should -Invoke Stop-Service @module
}
