$rightLookup = @{}
$right | ForEach-Object {
    $rightLookup[$_.UserID] = $_
}
