$host.UI.RawUI.WindowTitle = 'Script runner: {0}' -f $PID
$i = 0
while ($true) {
    Write-Host "Working on $i"
    $i++
    Start-Sleep -Seconds 30
}
