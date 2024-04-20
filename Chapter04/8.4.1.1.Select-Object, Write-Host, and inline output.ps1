& {
    $counter = @{ index = 0 }

    Write-Host 'Item picker'
    Write-Host '==========='
    $process = Get-Process | Select-Object -First 3
    $process | Select-Object -Property @(
        @{ Name = 'Option'; Expression = { ($counter.index++) }}
        'ProcessName'
        'ID’
        'StartTime'
    )
    [int]$picked = Read-Host 'Please select an item'

    Write-Host 'Thank you, you picked:'
    $process[$picked - 1]
}

# Expects output:
# 
# Item picker
# ===========
# 
# 
# Please select an item: 1
# Thank you, you picked:
# Option ProcessName    Id StartTime
# ------ -----------    -- ---------
#      1 powershell   5768 01/05/2023 11:17:38
#      2 pwsh         5512 01/05/2023 09:31:20
#      3 pwsh        12384 01/05/2023 11:02:04
#        powershell   5768 01/05/2023 11:17:38
