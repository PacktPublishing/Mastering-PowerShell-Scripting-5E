$instance = [PowerShell]::Create()
$instance.AddScript({
    Write-Error 'Something went wrong'
}).BeginInvoke()
