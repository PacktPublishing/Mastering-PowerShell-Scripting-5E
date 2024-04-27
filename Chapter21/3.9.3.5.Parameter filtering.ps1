It 'Ensures all services are in the desired state' {
    Set-ServiceState -Path file.csv

    Should -Invoke Stop-Service @module -ParameterFilter {
        $Name -eq 'service3'
    }
}
