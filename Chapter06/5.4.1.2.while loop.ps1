$baseUsername = $username = 'chris'
$i = 1
while (Get-ADUser -Filter "SamAccountName -eq '$username'") {
    $username = '{0}{1:D2}' -f $baseUsername, $i
    $i++
}
