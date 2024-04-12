$csv = @(
    "Name,Phone,Age"
    "David,0123456789,28"
) | ConvertFrom-Csv
$csv | ForEach-Object {
    $_.Age = $_.Age -as [int]
}
