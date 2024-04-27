function Test-ValidatePattern {
    [CmdletBinding()]
    param (
        [ValidatePattern('^Hello', Options = 'Multiline')]
        [string]
        $Parameter
    )
}
