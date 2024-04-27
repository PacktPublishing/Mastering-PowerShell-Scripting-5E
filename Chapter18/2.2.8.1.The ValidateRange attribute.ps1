function Test-ValidateRange {
    [CmdletBinding()]
    param (
        [ValidateRange(1, 20)]
        [int]
        $Parameter
    )
}
