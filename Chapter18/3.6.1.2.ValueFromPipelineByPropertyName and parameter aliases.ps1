function Import-Json {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, ValueFromPipelineByPropertyName)]
        [Alias('PSPath')]
        [string]
        $Path
    )
    process {
        Get-Content $Path | ConvertFrom-Json
    }
}
