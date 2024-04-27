function Test-ArgumentCompleter {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [ArgumentCompleter( {
            [CompletionResult]::new(
                "'C:\Program Files'",
                'C:\Program Files',
                'ParameterValue',
                '64-bit program files'
            )
            [CompletionResult]::new(
                "'C:\Program Files (x86)'",
                'C:\Program Files (x86)',
                'ParameterValue',
                '32-bit program files'
            )
        } )]
        $Path
    )
}
