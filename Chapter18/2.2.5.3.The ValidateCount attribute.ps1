function Test-ValidateCount {
    [CmdletBinding()]
    param (
        [ValidateCount(10, [byte]::MaxValue)]
        [string[]]
        $Parameter
    )
}
