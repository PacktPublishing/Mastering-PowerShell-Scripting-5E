$psInstance = [PowerShell]::Create()
$asyncResult = $psInstance.
    AddCommand('Start-Sleep').
    AddParameter('Seconds', 120).
    BeginInvoke()
$psInstance.Stop()
