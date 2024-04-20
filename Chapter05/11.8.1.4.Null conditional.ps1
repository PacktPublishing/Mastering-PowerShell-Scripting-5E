$someOtherObject = [PSCustomObject]@{
    Value = $null
}
if ($someOtherObject.Value) {
    $someOtherObject.Value.ToString()
}
