function Get-Name {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, ValueFromPipelineByPropertyName)]
        [string]
        $Name
    )

    process {
        $Name
    }
}
