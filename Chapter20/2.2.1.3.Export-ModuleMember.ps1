function Remove-ComputerDescription {
    [CmdletBinding(SupportsShouldProcess)]
    param ( )

    $removeParams = GetRegistryParameter

    if ($PSCmdlet.ShouldProcess(
        'Removing computer description'
    )) {
        Remove-ItemProperty @removeParams
    }
}
