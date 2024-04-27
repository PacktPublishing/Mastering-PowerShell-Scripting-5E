@'
BeforeDiscovery {
    Import-Module .\ServiceState.psm1 -Force
}

Describe Set-ServiceState {
   BeforeAll {
        $module = @{ ModuleName = 'ServiceState' }

        Mock Get-Service @module {
            [PSCustomObject]@{
                Status = 'Stopped'
            }
        }
        Mock Import-Csv @module {
            [PSCustomObject]@{
                Name           = 'service1'
                ExpectedStatus = 'Running'
            }
        }
        Mock Start-Service @module
        Mock Stop-Service @module
    }

    It 'When ExpectedStatus is running, starts the service' {
        Set-ServiceState -Path file.csv

        Should -Invoke Start-Service @module
    }
}
'@ | Set-Content ServiceState.tests.ps1
