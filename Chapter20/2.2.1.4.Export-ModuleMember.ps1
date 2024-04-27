function Set-ComputerDescription {
    [CmdletBinding(SupportsShouldProcess)]
    [OutputType([string])]
    param (
        [Parameter(Mandatory, Position = 1, ValueFromPipeline)]
        [string]
        $Description
    )

    process {
        if ($PSCmdlet.ShouldProcess(
            'Removing computer description')) {
            $setParams = GetRegistryParameter
            $params = @{
                Type  = 'String'
                Value = $Description
                Force = $true
            }
            try {
                New-ItemProperty @setParams @params
            } catch {
                $PSCmdlet.ThrowTerminatingError($_)
            }
        }
    }
}
