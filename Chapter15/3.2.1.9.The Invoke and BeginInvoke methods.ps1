using namespace System.Management.Automation

$instanceInput = [PSDataCollection[object]]@(1..10)
$instanceOutput = [PSDataCollection[object]]::new()
$psInstance = [PowerShell]::Create()
$asyncResult = $psInstance.
    AddCommand('ForEach-Object').
    AddParameter('Process', { $_ }).
    BeginInvoke(
        $instanceInput,
        $instanceOutput
    )
