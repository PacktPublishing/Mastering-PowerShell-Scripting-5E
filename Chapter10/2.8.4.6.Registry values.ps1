$keys = @(
    'HKLM:\Software'
    'HKLM:\Software\Wow6432Node'
    'Registry::HKEY_USERS\S-1-*\Software'
    'Registry::HKEY_USERS\S-1-*\Software\Wow6432Node'
) | Join-Path -ChildPath (
    'Microsoft\Windows\CurrentVersion\Uninstall\*'
)

Get-ItemProperty -Path $keys -ErrorAction Ignore |
    Where-Object DisplayName |
    Select-Object -Property @(
        @{
            Name       = 'Is64Bit'
            Expression = {
                [Environment]::Is64BitProcess -and
                $_.PSPath -notmatch 'Wow6432Node'
            }
        }
        'DisplayName'
        'DisplayVersion'
        'Publisher'
        'InstallLocation'
    )
