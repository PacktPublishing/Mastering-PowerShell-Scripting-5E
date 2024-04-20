@(
    'Process: 0'
    'Process: 4'
    "Process: $PID"
) -replace '\d+', {
    (Get-Process -ID $_.Value).Name
}
