function Test-ArgumentCompleter {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [ArgumentCompleter( {
            'C:\Program Files'
            'C:\Program Files (x86)'
        } )]
        $Path
    )
}
