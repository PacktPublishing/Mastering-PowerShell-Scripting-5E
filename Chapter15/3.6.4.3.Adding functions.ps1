using namespace System.Management.Automation.Runspaces

function Write-Greeting {
    Write-Host 'Hello world'
}
$function = Get-Command Write-Greeting
$functionEntry = [SessionStateFunctionEntry]::new(
    $function.Name,
    $function.Definition
)
$initialSessionState.Commands.Add($functionEntry)
