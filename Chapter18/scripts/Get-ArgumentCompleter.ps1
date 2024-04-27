function Get-ArgumentCompleter {
    <#
    .SYNOPSIS
        Get custom argument completers registered in the current session.
    .DESCRIPTION
        Get custom argument completers registered in the current session.
        
        By default Get-ArgumentCompleter lists all of the completers registered in the session.
    .EXAMPLE
        Get-ArgumentCompleter
        
        Get all of the argument completers for PowerShell commands in the current session.
    .EXAMPLE
        Get-ArgumentCompleter -CommandName Invoke-ScriptAnalyzer
        
        Get all of the argument completers used by the Invoke-ScriptAnalyzer command.
    .EXAMPLE
        Get-ArgumentCompleter -Native

        Get all of the argument completers for native commands in the current session.
    #>

    [CmdletBinding(DefaultParameterSetName = 'PSCommand')]
    param (
        # Filter results by command name.
        [string]
        $CommandName = '*',

        # Filter results by parameter name.
        [Parameter(ParameterSetName = 'PSCommand')]
        [string]
        $ParameterName = '*',

        # Get argument completers for native commands.
        [Parameter(ParameterSetName = 'Native')]
        [switch]
        $Native
    )

    $getExecutionContextFromTLS = [PowerShell].Assembly.GetType('System.Management.Automation.Runspaces.LocalPipeline').GetMethod(
        'GetExecutionContextFromTLS',
        [System.Reflection.BindingFlags]'Static,NonPublic'
    )
    $internalExecutionContext = $getExecutionContextFromTLS.Invoke(
        $null,
        [System.Reflection.BindingFlags]'Static, NonPublic',
        $null,
        $null,
        $psculture
    )

    if ($Native) {
        $argumentCompletersProperty = $internalExecutionContext.GetType().GetProperty(
            'NativeArgumentCompleters',
            [System.Reflection.BindingFlags]'NonPublic, Instance'
        )
    } else {
        $argumentCompletersProperty = $internalExecutionContext.GetType().GetProperty(
            'CustomArgumentCompleters',
            [System.Reflection.BindingFlags]'NonPublic, Instance'
        )
    }

    $argumentCompleters = $argumentCompletersProperty.GetGetMethod($true).Invoke(
        $internalExecutionContext,
        [System.Reflection.BindingFlags]'Instance, NonPublic, GetProperty',
        $null,
        @(),
        $psculture
    )
    foreach ($completer in $argumentCompleters.Keys) {
        $name, $parameter = $completer -split ':'

        if ($name -like $CommandName -and $parameter -like $ParameterName) {
            [PSCustomObject]@{
                CommandName   = $name
                ParameterName = $parameter
                Definition    = $argumentCompleters[$completer]
            }
        }
    }
}