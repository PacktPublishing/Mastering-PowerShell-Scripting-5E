﻿function Invoke-Something { 
    [CmdletBinding()]
    param ( )

    try {
        'Statement1'
        throw 'Statement2'
        'Statement3'
    } catch {
        $PSCmdlet.ThrowTerminatingError($_) 
    }
} 
