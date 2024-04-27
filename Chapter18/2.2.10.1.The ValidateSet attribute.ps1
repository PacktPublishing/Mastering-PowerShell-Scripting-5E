function Test-ValidateSet {
    [CmdletBinding()]
    param (
        [ValidateSet('One', 'Two', 'Three')]
        [string]
        $Paramter
    )
}
