function Get-ComputerDescription {
    [CmdletBinding()]
    [OutputType([string])]
    param ( )

    $getParams = GetRegistryParameter
    Get-ItemPropertyValue @getParams
}
