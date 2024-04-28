Set-PSBreakpoint -Variable newValue
foreach ($value in 1..5) {
    $newValue = $value
}
