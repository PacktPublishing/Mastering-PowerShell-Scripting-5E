Start-Job -PSVersion 5.1 -ScriptBlock { $PSVersionTable } |
    Receive-Job -Wait
