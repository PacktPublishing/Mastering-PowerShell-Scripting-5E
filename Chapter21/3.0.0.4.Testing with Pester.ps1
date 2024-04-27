$container = New-PesterContainer -ScriptBlock {
    Describe 'PS developer workstation' {
        It 'PowerShell 7 is installed' {
            $PSVersionTable.PSVersion |
                Should -BeGreaterOrEqual 7.0.0
        }

        It 'Workspace must exist' {
            'C:\workspace' | Should -Exist
        }
    }
}
Invoke-Pester -Container $container
