Describe "DNS servers" -ForEach @(
    'dns01'
    'dns02'
) {
    It 'The DNS service is running on <_>' {
        $params = @{
            ClassName    = 'Win32_Service'
            Filter       = 'Name="dns"'
            ComputerName = $_
        }
        Get-CimInstance @params | Should -Not -BeNullOrEmpty
    }
}
