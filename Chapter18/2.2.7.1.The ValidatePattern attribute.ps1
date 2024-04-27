function Test-ValidatePattern {
    [CmdletBinding()]
    param (
        [ValidatePattern('^Hello')]
        [string]
        $Parameter
    )
}
