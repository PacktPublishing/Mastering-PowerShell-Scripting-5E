Describe 'PS developer workstation' {
    Context 'PowerShell' {
        It 'PowerShell 7 is installed' {	
            Get-Command pwsh -ErrorAction Ignore |
                ForEach-Object Version |
                Should -BeGreaterOrEqual '7.0.0'
        }
    }

    Context 'Packages' {
        It 'Chocolatey is installed' {
            { Get-Command choco -ErrorAction Stop } |
                Should -Not -Throw
        }
    }
}
