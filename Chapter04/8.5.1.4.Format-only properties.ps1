$format.FormatViewDefinition | Where-Object {
    $_.Control.GetType().Name -eq 'TableControl'
}
