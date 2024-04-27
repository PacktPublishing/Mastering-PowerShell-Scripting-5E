function Test-ValidateScript {
    [CmdletBinding()]
    param (
        [ValidateScript({
            if (Test-Path $_ -PathType Leaf) {
                $true
            } else {
                throw 'Value must be an existing file'
            }
        })]
        [string]
        $Parameter
    )
}
