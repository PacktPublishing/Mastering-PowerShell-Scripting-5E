$string = @(
    'Name : John Doe'
    'Username : jdoe'
)
$hashtables = $string.Replace(':', '=') | ConvertFrom-StringData
$hashtables.GetType()
