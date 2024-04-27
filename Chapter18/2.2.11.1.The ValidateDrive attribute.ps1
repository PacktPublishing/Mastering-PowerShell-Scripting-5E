function Test-ValidateDrive {
    [CmdletBinding()]
    param (
        [ValidateDrive('C')]
        [string]
        $Parameter
    )
}
