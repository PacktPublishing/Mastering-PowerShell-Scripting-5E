Describe 'PS developer workstation' {
    Context 'Packages' {
        It 'Chocolatey is installed' -Skip:(-not $IsWindows) {
            { Get-Command choco -ErrorAction Stop } |
                Should -Not -Throw
        }
    }
}
