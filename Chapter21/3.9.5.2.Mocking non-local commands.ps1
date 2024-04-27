Describe CreateDnsZone {
    BeforeAll {
        function Get-DnsServerZone { }
        function Add-DnsServerPrimaryZone { }

        Mock Get-DnsServerZone
        Mock Add-DnsServerPrimaryZone
    }
    It 'When the zone does not exist, creates a zone' {
        New-DnsZone -Name name
        Should -Invoke Add-DnsServerPrimaryZone
    }
}
