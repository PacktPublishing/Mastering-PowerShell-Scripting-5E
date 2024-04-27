function Test-ArgumentCompleter {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [ArgumentCompleter( {
            param (
                $commandName,
                $parameterName,
                $wordToComplete,
                $commandAst,
                $fakeBoundParameter
            )
            $possibleValues = @(
                @{ Value = 'Start'; ToolTip = 'The Start action' }
                @{ Value = 'Stop';  ToolTip = 'The Stop action' }
            )
            $possibleValues |
                Where-Object Value -like "$wordToComplete*" |
                ForEach-Object {
                    [CompletionResult]::new(
                        $_.Value, # completionText
                        $_.Value, # listItemText
                        [CompletionResultType]::ParameterValue,
                        $_.ToolTip
                    )
                }
        } )]
        $Action
    )
}
