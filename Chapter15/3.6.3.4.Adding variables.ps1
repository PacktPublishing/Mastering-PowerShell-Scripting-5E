using namespace System.Management.Automation.Runspaces

[ValidateSet('Value1', 'Value2')][string]$ComplexVariable = 'Value1'
$variable = Get-Variable ComplexVariable
$variableEntry = [SessionStateVariableEntry]::new(
    $variable.Name,
    $variable.Value,
    $variable.Description,
    $variable.Options,
    $variable.Attributes
)
$initialSessionState.Variables.Add($variableEntry)
