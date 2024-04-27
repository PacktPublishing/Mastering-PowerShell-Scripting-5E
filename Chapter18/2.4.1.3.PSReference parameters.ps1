function Test-Date {
    [CmdletBinding()]
    param (
        [string]
        $Date,

        [ref]
        $DateTime
    )
    if ($value = Get-Date $Date -ErrorAction SilentlyContinue) {
        if ($DateTime) {
            $DateTime.Value = $value
        }
        $true
    } else {
        $false
    }
}
