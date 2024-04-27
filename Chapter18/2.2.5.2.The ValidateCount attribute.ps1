function Test-ValidateCount {
    [CmdletBinding()]
    param (
        [ValidateCount(1, 1)]
        [string[]]
        $Parameter
    )
}
