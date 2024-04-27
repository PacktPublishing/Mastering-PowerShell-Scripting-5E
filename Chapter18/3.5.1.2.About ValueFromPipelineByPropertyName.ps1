function Get-Status {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, ValueFromPipelineByPropertyName)]
        [string]
        $Name,

        [Parameter(Mandatory, ValueFromPipelineByPropertyName)]
        [string]
        $Status
    )
    process {
        '{0}: {1}' -f $Name, $Status
    }
}
