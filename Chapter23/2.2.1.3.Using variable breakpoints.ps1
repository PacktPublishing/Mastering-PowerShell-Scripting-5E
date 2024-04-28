Set-PSBreakpoint -Variable values
$values = @{}
foreach ($value in 1..5) {
    $values[$value] = $value
}
