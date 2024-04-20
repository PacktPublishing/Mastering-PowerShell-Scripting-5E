using namespace System.Management.Automation.Runspaces

$variableEntry = [SessionStateVariableEntry]::new(
    'PrivateVariable',
    'Value',
    'Optional description',
    'Private'
)
$initialSessionState.Variables.Add($variableEntry)
