$randomNumbers = Get-Random -Count 30 -Minimum 1 -Maximum 30
foreach ($number in $randomNumbers) {
    if ($number -gt 10) {
        break
    }
}
$number
