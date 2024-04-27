function Test-ArgumentCompleter {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [CustomActionsCompleter((
            'Start',
            'Stop',
            'Create',
            'Delete'
        ))]
        $Action
    )
}
