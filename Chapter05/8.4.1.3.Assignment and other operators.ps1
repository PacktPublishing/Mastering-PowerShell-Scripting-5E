$isValidValue = $value -and
    $value.Count -eq 3 -and
    $value -contains 2 -and
    -not ($value -gt 4)

if ($isValidValue) {
    <# Script statements #>
}
