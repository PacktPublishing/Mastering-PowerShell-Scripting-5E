function Test-ShouldContinue {
    [CmdletBinding(SupportsShouldProcess)]
    param (
        [switch]$Force
    )
    $yesToAll = $noToAll = $false
    if ($Force -or $PSCmdlet.ShouldContinue(
            "Warning: Deleting SomeObject $value",
            'Question: Are you sure you want to do continue?',
            $false,
            [Ref]$yesToAll,
            [Ref]$noToAll)) {
        Write-Host 'Deleting SomeObject' -ForegroundColor Cyan
    }
}
