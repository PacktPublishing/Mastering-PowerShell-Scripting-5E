It 'Service is running, expected running' {
    Set-ServiceState -Path file.csv

    Should -Not -Invoke Start-Service @module
    Should -Not -Invoke Stop-Service @module
}
