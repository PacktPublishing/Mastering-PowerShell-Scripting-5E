if ($PSCmdlet.ShouldProcess(
        'Message displayed using WhatIf',
        'Warning: Deleting SomeObject',
        'Question: Are you sure you want to do continue?')
) {
    Write-Host 'Deleting SomeObject' -ForegroundColor Cyan
}
