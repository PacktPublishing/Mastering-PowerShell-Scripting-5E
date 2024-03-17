$left = 1..10000 | ForEach-Object {
    [PSCustomObject]@{
        UserID  = "User$_"
        Country = "UK"
    }
}
$right = 6400..20000 | ForEach-Object {
    [PSCustomObject]@{
        UserID = "User$_"
        City   = "Manchester"
    }
}
