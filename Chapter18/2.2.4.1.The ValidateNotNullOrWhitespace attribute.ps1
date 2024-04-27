function Test-ValidateNotNullOrWhitespace {
    [CmdletBinding()]
    param (
        [ValidateNotNullOrWhitespace()]
        [string]
        $Parameter1
    )
}
