do {
    $yesOrNo = Read-Host 'Continue?'
} until ($yesOrNo -in 'y', 'n')

if ($yesOrNo -eq 'n') {
    return
}
Write-Host "Continuing"
