$files = Get-Childitem c:\windows -File -Recurse -ErrorVariable failures
$failures | Write-Warning
