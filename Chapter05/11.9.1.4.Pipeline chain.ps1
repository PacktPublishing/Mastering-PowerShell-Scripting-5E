Get-Item DoesNotExist -ErrorAction Ignore ||
    Write-Host 'Does not exist'
