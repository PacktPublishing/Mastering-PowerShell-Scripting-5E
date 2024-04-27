function Test-ValidateNotNull {
    [CmdletBinding()]
    param (
        [ValidateNotNull()]
        [string]
        $Parameter
    )
    Write-Host 'Parameter binding was successful'
}
