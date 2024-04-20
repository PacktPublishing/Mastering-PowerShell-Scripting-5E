Using namespace System.Management.Automation.Runspaces

$warning = [PSSnapInException]::new()
$initialSessionState.ImportPSSnapIn(
    'WDeploySnapin3.0',
    [ref]$warning
)
