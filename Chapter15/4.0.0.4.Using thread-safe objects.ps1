using namespace System.Collections.Concurrent
using namespace System.Management.Automation.Runspaces

$stack = [ConcurrentStack[object]]::new()
$stack.Push('Value')
$variableEntry = [SessionStateVariableEntry]::new(
    'stack',
    $stack,
    ''
)
$runspace = [RunspaceFactory]::CreateRunspace(
    [InitialSessionState]::CreateDefault2()
)
$runspace.InitialSessionState.Variables.Add($variableEntry)
$psInstance = [PowerShell]::Create()
$psInstance.Runspace = $runspace
$runspace.Open()
$psInstance.AddScript('
    $value = 0
    if ($stack.TryPop([ref]$value)) {
        $value
    }
').Invoke()
