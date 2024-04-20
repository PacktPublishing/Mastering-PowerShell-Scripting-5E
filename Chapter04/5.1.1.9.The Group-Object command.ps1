$hashtable = @(
    [IPAddress]'10.0.0.1'
    [IPAddress]'10.0.0.2'
    [IPAddress]'10.0.0.1'
) | Group-Object -AsHashtable 

