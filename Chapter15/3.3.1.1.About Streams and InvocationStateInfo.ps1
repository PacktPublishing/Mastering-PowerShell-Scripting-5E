$instance = [PowerShell]::Create()
$instance.AddScript({
    Write-Verbose Start -Verbose
    Start-Sleep -Seconds 30
    Write-Verbose End -Verbose
}).BeginInvoke()
