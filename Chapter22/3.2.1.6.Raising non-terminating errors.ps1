function Invoke-Divide {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [int]
        $Numerator,

        [Parameter(Mandatory)]
        [int]
        $Denominator
    )

    try { 
        $Numerator / $Denominator 
    } catch {
        Write-Error -ErrorRecord $_
    }
}   
