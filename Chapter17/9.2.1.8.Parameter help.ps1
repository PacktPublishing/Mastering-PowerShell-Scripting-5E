function Get-Something {
    <#
    .SYNOPSIS
        Synopsis text.
    #>
    param (
        # The path to the current PowerShell process.
        [PSDefaultValue(Help = 'pwsh.exe or powershell.exe')]
        $Path = (Get-Process -ID $PID).Path
    )
}
