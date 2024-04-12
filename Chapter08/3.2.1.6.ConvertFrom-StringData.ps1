$string = @(
    'Name = John Doe'
    'Username = jdoe'
) | Out-String
[PSCustomObject]($string | ConvertFrom-StringData)
