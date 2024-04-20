function Test-ShouldProcess {
    [CmdletBinding(SupportsShouldProcess)]
    param ( )
    if ($PSCmdlet.ShouldProcess('SomeObject', 'delete')) {
        Write-Host 'Deleting SomeObject' -ForegroundColor Cyan
    }
}
