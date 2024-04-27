function Get-ComputerDescription {
    [CmdletBinding()]
    [OutputType([string])]
    param ( )

    $getParams = @{
        Path = 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters'
        Name = 'srvcomment'
    }
    Get-ItemPropertyValue @getParams
}
