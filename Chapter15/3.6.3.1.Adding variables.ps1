using namespace System.Management.Automation.Runspaces

$variableEntry = [SessionStateVariableEntry]::new(
    'Variable',
    'Value',
    'Optional description'
)
$initialSessionState = [InitialSessionState]::CreateDefault2()
$initialSessionState.Variables.Add($variableEntry)
