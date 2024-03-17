$customObject = [Ordered]@{
    Username = 'username'
}
if ($email) {
    $customObject.Email = $email
}
$customObject = [PSCustomObject]$customObject
