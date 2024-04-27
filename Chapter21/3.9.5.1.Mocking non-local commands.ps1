function New-DnsZone {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]
        $Name
    )
    $params = @{
        Name             = $Name
        DynamicUpdate    = 'Secure'
        ReplicationScope = 'Domain'
    }
    $zone = Get-DnsServerZone $Name -ErrorAction SilentlyContinue
    if (-not $zone) {
        Add-DnsServerPrimaryZone @params
    }
}
