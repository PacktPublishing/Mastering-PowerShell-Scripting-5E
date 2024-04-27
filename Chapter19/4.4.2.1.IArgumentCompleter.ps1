{
    param (
        $commandName,
        $parameterName,
        $wordToComplete,
        $commandAst,
        $fakeBoundParameter
    )
    $possibleValues = 'Start', 'Stop', 'Create', 'Delete'
    $possibleValues -like "$wordToComplete*"
}

# Expects output:
# 
# [IEnumerable[CompletionResult]] CompleteArgument(
#     [string]      $commandName,
#     [string]      $parameterName,
#     [string]      $wordToComplete,
#     [CommandAst]  $commandAst,
#     [IDictionary] $fakeBoundParameters
# ) {
#     $possibleValues = 'Start', 'Stop', 'Create', 'Delete'
#     $values = $possibleValues -like "$wordToComplete*"
#     return $values -as [CompletionResult[]]
# }
