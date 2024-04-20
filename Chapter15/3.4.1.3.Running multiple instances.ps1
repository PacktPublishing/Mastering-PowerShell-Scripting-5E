while ($jobs.State -contains 'Running') {
    Start-Sleep -Milliseconds 100
}
