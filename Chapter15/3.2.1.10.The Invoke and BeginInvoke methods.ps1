using namespace System.Management.Automation

$instanceInput = [PSDataCollection[PSObject]](1..10)
$instanceOutput = [PSDataCollection[PSObject]]::new()
$asyncResult = $psInstance.AddScript('
    process {
        $_
    )
').BeginInvoke(
    $instanceInput,
    $instanceOutput
)
