function Get-CimAliasInstance {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, Position = 1)]
        [AliasName]
        $AliasName
    )
    Get-CimInstance -ClassName ([ClassName]$AliasName)
}
