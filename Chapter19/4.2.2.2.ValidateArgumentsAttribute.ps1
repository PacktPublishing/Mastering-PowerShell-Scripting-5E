function Test-Validate {
    [CmdletBinding()]
    param (
        [ValidateAlphabeticalOrder()]
        [string[]]
        $Value
    )
}
