function Test-ValidateNotNullOrEmpty {
    [CmdletBinding()]
    param (
        [ValidateNotNullOrEmpty()]
        [string[]]
        $Parameter
    )
}
