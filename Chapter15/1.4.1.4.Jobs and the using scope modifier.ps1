$hashtable = @{}
Start-Job { ($using:hashtable).Add('newValue', 1) } |
    Receive-Job -Wait
