& {
    $counter = @{ index = 0 }

    Write-Host 'Item picker'
    Write-Host '==========='
    $process = Get-Process -Name pwsh, powershell
    $process | Select-Object -Property @(
        @{ Name = 'Option'; Expression = { ($counter.index++) }}
        'ProcessName'
        'ID'
        'StartTime'
    ) | Out-Host
    [int]$picked = Read-Host 'Please select an item'

    Write-Host 'Thank you, you picked:'
    $process[$picked - 1] | Out-Host
}
