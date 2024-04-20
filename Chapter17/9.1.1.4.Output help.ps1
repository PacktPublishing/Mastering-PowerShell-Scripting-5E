function New-StringArray {
    <#
    .SYNOPSIS
        Synopsis text.
    #>
    [CmdletBinding()]
    [OutputType([string[]])]
    param ( )

    Write-Ouptut @('one', 'two') -NoEnumerate
}
