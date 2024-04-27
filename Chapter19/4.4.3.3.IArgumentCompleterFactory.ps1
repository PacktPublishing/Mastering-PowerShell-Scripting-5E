class CustomActionsCompleter : ArgumentCompleter,
    IArgumentCompleterFactory {

    [string[]] $PossibleValues

    CustomActionsCompleter(
        [string[]] $possibleValues
    ) {
        $this.PossibleValues = $possibleValues
    }
    
    [IArgumentCompleter] Create() {
        return [ActionCompleter]::new($this.PossibleValues)
    }
}
