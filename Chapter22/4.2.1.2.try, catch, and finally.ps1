try {
    1/0
} catch {
    Write-Error -ErrorRecord $_
}
