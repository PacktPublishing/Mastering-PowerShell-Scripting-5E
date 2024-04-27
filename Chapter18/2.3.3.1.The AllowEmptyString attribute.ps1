function Test-AllowEmptyString {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [AllowEmptyString()]
        [string]
        $Parameter
    )
}
