function Test-AllowNull {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [AllowNull()]
        [object]
        $Parameter
    )
}
