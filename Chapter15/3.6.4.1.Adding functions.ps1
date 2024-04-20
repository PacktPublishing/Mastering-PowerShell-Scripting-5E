using namespace System.Management.Automation.Runspaces

$functionEntry = [SessionStateFunctionEntry]::new(
    'Write-Greeting',
    'Write-Host "Hello world"'
)
$initialSessionState.Commands.Add($functionEntry)
