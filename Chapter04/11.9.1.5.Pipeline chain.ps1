Get-Item DoesNotExist -ErrorAction Ignore
if (-not $?) {
    Write-Host 'Does not exist'
}
