Describe "DNS servers" -ForEach @(
    @{ ComputerName = 'dns01' }
    @{ ComputerName = ‘dns02’ }
) {
    It 'The DNS service is running on <ComputerName>' {
        $params = @{
            ClassName    = 'Win32_Service'
            Filter       = 'Name="dns"'
            ComputerName = $ComputerName
        }
        Get-CimInstance @params | Should -Not -BeNullOrEmpty
    }
}
