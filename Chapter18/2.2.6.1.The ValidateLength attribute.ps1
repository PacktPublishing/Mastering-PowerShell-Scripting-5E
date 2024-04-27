function Test-ValidateLength {
    [CmdletBinding()]
    param (
        [ValidateLength(2, 6)]
        [string[]]
        $Parameter
    )
}
