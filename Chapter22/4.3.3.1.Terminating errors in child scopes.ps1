function Invoke-Something {
    [CmdletBinding()]
    param ( )

    try {
        throw 'Error'
    } catch {
        $PSCmdlet.ThrowTerminatingError($_)
    }
}
