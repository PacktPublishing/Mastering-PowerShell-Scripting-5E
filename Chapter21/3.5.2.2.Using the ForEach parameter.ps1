﻿Describe 'PS developer workstation' {
    Context 'Packages' {
        It 'Chocolatey is installed' {
            { Get-Command choco -ErrorAction Stop } |
                Should -Not -Throw
        }
 
        It '<Name> is installed' -ForEach @(
            @{ Name = 'terraform' }
            @{ Name = 'git' }
        ) -Test {
            choco list -e $Name -l -r | Should -Match $Name
        }
    }
}
