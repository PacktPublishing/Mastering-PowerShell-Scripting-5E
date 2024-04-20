function Test-ShouldContinue {
    [CmdletBinding(SupportsShouldProcess)]
    param ( )

    $yesToAll = $noToAll = $false
    if ($PSCmdlet.ShouldContinue(
            "Warning: Deleting SomeObject $value",
            'Question: Are you sure you want to do continue?',
            $false,
            [ref]$yesToAll,
            [ref]$noToAll)
    ) {
        Write-Host 'Deleting SomeObject' -ForegroundColor Cyan
    }
}
