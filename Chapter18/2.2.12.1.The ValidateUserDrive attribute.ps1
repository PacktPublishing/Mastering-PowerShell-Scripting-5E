function Test-ValidateDrive {
    [CmdletBinding()]
    param (
        [ValidateUserDrive()]
        [string]
        $Parameter1
    )
}
