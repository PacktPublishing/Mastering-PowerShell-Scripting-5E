It 'Ensures all services are in the desired state' {
    Set-ServiceState -Path file.csv

    Should -Invoke Start-Service -Times 1 -Exactly @module
    Should -Invoke Stop-Service -Times 1 -Exactly @module
}
