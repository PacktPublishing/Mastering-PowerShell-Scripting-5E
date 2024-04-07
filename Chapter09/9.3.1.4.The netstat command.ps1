$regex = '(?x)
    # The left hand side of the table
    ^\s*
    # Protocol column (and white space after)
    (?<Protocol>\S+)\s+
    # Local address column (and white space after)
    (?<LocalAddress>\S+)\s+
    # Foreign address column (and white space after)
    (?<ForeignAddress>\S+)\s+
    # State column (and white space after)
    (?<State>\S+)\s+
    # PID column and the end of string
    (?<PID>\d+)$'

netstat -ano |
    Where-Object { $_ -match $regex } |
    ForEach-Object { 
        $matches.Remove(0) 
        [PSCustomObject]$matches 
    } 

# Expects output:
# 
# Protocol       : TCP
# ForeignAddress : 0.0.0.0:0
# State          : LISTENING
# LocalAddress   : 0.0.0.0:135
# PID            : 1820
# 
# Protocol       : TCP
# ForeignAddress : 0.0.0.0:0
# State          : LISTENING
# LocalAddress   : 0.0.0.0:445
# PID            : 4
