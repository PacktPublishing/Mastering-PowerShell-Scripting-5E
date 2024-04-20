using namespace System.Management.Automation

$instanceInput = [PSDataCollection[object]]::new()
$instanceOutput = [PSDataCollection[object]]::new()
$psInstance = [PowerShell]::Create()
$asyncResult = $psInstance.AddScript('
    1..10 | ForEach-Object {
        Start-Sleep -Seconds 1
        $_
    }
').BeginInvoke(
    $instanceInput,
    $instanceOutput
)
