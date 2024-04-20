function Get-NetInformation {
    $params = @{
        AddressFamily = 'IPv4'
        PrefixOrigin  = 'Dhcp'
    }
    Get-NetIPAddress @params | ForEach-Object {
        $adapter = $_ | Get-NetAdapter

        [PSCustomObject]@{
            InterfaceName   = $adapter.Name
            IPAddress       = $_.IPAddress
            MacAddress      = $adapter.MacAddress
            LinkSpeed       = $adapter.LinkSpeed
        }
    }
}
