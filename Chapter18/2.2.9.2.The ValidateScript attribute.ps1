function Test-ValidateScript {
    [CmdletBinding()]
    param (
        [ValidateScript(
            { Test-Path $_ -PathType Leaf },
            ErrorMessage = 'Value must be an existing file'
        )]
        [string]
        $Parameter
    )
}
