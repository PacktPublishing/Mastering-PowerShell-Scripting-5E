$host.UI.RawUI.WindowTitle = '{0}{1} - PowerShell {2}' -f @(
    [Environment]::UserName
    [IntPtr]::Size -eq 4 ? ' (32-bit)' : ''
    $PSVersionTable.PSVersion
)
