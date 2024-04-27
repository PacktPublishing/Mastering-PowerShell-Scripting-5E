Mock Get-Service @module {
    [PSCustomObject]@{
        Name   = $Name
        Status = 'Stopped'
    }
}
