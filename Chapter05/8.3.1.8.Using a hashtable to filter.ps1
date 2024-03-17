$rightLookup = @{}
$right | ForEach-Object {
    $rightLookup[$_.UserID] = $_
}
$left |
    Where-Object { $rightLookup.Contains($_.UserID) } |
    ForEach-Object {
        $left.City = $rightLookup[$_.UserID].City
        $left
    }
