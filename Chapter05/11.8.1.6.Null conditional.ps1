& {
    Set-StrictMode -Version Latest
    $someOtherObject = [PSCustomObject]@{}
    $someOtherObject.Value?.ToString()
}
