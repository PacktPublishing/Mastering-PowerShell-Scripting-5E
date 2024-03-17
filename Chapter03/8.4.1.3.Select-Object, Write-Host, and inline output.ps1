& {
    $counter = @{ index = 0 }

    Write-Host 'Item picker'
    Write-Host '==========='
    $process = Get-Process -Name pwsh, powershell
    $process | Format-Table -Property @(
        @{ Name = 'Option'; Expression = { ($counter.index++) }}
        'ProcessName'
        'ID'
        'StartTime'
    ) | Out-Host
    [int]$picked = Read-Host 'Please select an item'

    Write-Host 'Thank you, you picked:'
    $process[$picked - 1] | Out-Host
}

# Expects output:
# 
# Item picker
# ===========
# 
# Option ProcessName    Id StartTime
# ------ -----------    -- ---------
#      1 powershell  27572 10/03/2024 11:22:08
#      2 pwsh         2296 10/03/2024 08:43:21
#      3 pwsh         5600 10/03/2024 08:43:04
# 
# Please select an item: 1
# Thank you, you picked:
# 
#  NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
#  ------    -----      -----     ------      --  -- -----------
#      38   142.37     159.36       0.47   27572   1 powershell
