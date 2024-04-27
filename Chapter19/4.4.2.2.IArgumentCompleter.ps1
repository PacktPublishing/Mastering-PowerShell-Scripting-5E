using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation
using namespace System.Management.Automation.Language

class ActionCompleter : IArgumentCompleter {
    [IEnumerable[CompletionResult]] CompleteArgument(
        [string]      $commandName,
        [string]      $parameterName,
        [string]      $wordToComplete,
        [CommandAst]  $commandAst,
        [IDictionary] $fakeBoundParameters
    ) {
        $possibleValues = 'Start', 'Stop', 'Create', 'Delete'
        $values = $possibleValues -like "$wordToComplete*"
        return $values -as [CompletionResult[]]
    }
}
