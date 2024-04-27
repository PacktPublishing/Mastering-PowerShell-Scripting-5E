class ActionCompleter : IArgumentCompleter {
    [string[]] $PossibleValues

    ActionCompleter(
        [string[]] $possibleValues
    ) {
        $this.PossibleValues = $possibleValues
    }

    [IEnumerable[CompletionResult]] CompleteArgument(
        [string]      $commandName,
        [string]      $parameterName,
        [string]      $wordToComplete,
        [CommandAst]  $commandAst,
        [IDictionary] $fakeBoundParameters
    ) {
        $values = $this.PossibleValues -like "$wordToComplete*"
        return $values -as [CompletionResult[]]
    }
}
