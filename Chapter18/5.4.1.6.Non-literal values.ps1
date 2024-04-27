$inputObject = [PSCustomObject]@{
    simple        = 1
    'with spaces' = 2
}
Test-ArgumentCompleter -InputObject $inputObject -Property
