function Test-ShouldProcess {
    [CmdletBinding(SupportsShouldProcess)]
    param ( )
    if ($PSCmdlet.ShouldProcess('SomeObject')) {
        Write-Host 'Deleting SomeObject' -ForegroundColor Cyan
    }
}
