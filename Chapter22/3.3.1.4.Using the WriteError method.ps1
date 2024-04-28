function Test-WriteError {
    [CmdletBinding()]
    param (
        [switch]
        $UseMethod
    )
    $errorRecord = [ErrorRecord]::new( 
        [Exception]::new('Error occurred'),
        'InvalidOperation', 
        'InvalidOperation',
        $null
    )
    if ($UseMethod) {
        $PSCmdlet.WriteError($errorRecord)
    } else {
        Write-Error -ErrorRecord $errorRecord
    }
}
