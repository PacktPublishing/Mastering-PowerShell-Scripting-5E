Invoke-Command -ComputerName localhost -ScriptBlock {
    $os = (Get-CimInstance Win32_OperatingSystem).Caption

    $params = @{
        AddressFamily = 'IPv4'
        PrefixOrigin  = 'Dhcp'
    }
    Get-NetIPAddress @params | ForEach-Object {
        $adapter = $_ | Get-NetAdapter

        [PSCustomObject]@{
            ComputerName    = $env:COMPUTERNAME
            OperatingSystem = $os
            InterfaceName   = $adapter.Name
            IPAddress       = $_.IPAddress
            MacAddress      = $adapter.MacAddress
            LinkSpeed       = $adapter.LinkSpeed
        }
    }
}

# Expects output:
# 
# ComputerName    : COMPUTERNAME
# OperatingSystem : Microsoft Windows 11 Pro
# InterfaceName   : Ethernet
# IPAddress       : 192.168.1.1
# MacAddress      : AA-AB-AC-AD-AE-AF
# LinkSpeed       : 1 Gbps
# PSComputerName  : localhost
# RunspaceId      : 775b79de-2f56-4835-8aa6-64cd903fd27a
