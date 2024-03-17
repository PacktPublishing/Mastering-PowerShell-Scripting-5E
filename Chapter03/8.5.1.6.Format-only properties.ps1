$tableFormat = $format.FormatViewDefinition | Where-Object {
    $_.Control.GetType().Name -eq 'TableControl' -and
    $_.Name -eq 'process'
}
