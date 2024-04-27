Describe 'PS developer workstation' {
    Context 'Packages' {
        It '<_> is installed' -TestCases @(
            'terraform'
            'git'
        ) -Test {
            if (-not (Get-Command choco -ErrorAction Ignore)) { 
                Set-ItResult -Skipped
            }

            choco list -e $_ -l -r | Should -Match $Name
        }
    }
}
