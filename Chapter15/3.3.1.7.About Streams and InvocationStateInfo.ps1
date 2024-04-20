$instance = [PowerShell]::Create()
$instance.AddScript({
    throw 'Something went wrong'
}).BeginInvoke()
