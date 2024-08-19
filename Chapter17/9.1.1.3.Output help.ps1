function Get-Something {
    <#
    .SYNOPSIS
        Synopsis text.
    #>
    [CmdletBinding()]
    [OutputType([string])]
    param ( )

    [string[]]@(
        'first'
        'second'
    )
}
