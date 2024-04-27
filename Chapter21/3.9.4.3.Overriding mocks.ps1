It 'Service is stopped, expected running' {
    Mock Get-Service @module {
        [PSCustomObject]@{
            Status = 'Stopped'
        }
    }

    Set-ServiceState -Path file.csv

    Should -Invoke Start-Service @module
    Should -Not -Invoke Stop-Service @module
}
