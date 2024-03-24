$rightLookup = @{}
$right | ForEach-Object {
    $rightLookup[$_.UserID] = $_
}
$left |
    Where-Object { $rightLookup.Contains($_.UserID) } |
    ForEach-Object {
        $_.City = $rightLookup[$_.UserID].City
        $_
    }
