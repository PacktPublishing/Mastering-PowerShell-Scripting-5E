@'
BeforeDiscovery {
    Import-Module .\ServiceState.psm1 -Force
}
Describe Set-ServiceState {
   BeforeAll {
        $module = @{ ModuleName = 'ServiceState' }

        Mock Get-Service @module {
            [PSCustomObject]@{
                Status = 'Running'
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
}
'@ | Set-Content Set-ServiceState.tests.ps1
