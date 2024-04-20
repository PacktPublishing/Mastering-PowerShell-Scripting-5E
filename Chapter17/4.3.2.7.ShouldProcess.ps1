function Test-ShouldProcess {
    [CmdletBinding(SupportsShouldProcess)]
    param ( )
    foreach ($value in 1..2) {
        if ($PSCmdlet.ShouldProcess(
                "Would delete SomeObject $value",
                "Warning: Deleting SomeObject $value",
                'Question: Are you sure you want to do continue?')
        ) {
            Write-Host "Deleting SomeObject $value" -ForegroundColor Cyan
        }
    }
}
