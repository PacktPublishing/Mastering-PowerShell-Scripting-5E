Describe 'PS developer workstation' {
    Context 'Packages' {
        It 'Chocolatey is installed' {
            { Get-Command choco -ErrorAction Stop } |
                Should -Not -Throw
        }
 
        It '<_> is installed' -ForEach @(
            'terraform'
            'git'
        ) -Test {
            choco list -e $Name -l -r | Should -Match $_
        }
    }
}
