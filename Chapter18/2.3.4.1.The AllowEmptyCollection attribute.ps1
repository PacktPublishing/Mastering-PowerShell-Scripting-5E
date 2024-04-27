function Test-AllowEmptyCollection {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [AllowEmptyCollection()]
        [object[]]
        $Parameter
    )
}
