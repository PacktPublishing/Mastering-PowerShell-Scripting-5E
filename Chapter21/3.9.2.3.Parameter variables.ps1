Mock Get-Service @module {
    if ($PesterBoundParameters.ContainsKey('Name')) {
        [PSCustomObject]@{
            Name   = $Name
            Status = ‘Stopped’
        }
    }
}
