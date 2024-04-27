$command = (Get-Command Enable-NetAdapter)
$parameter = $command.Parameters['InputObject']
$attribute = $parameter.Attributes |
    Where-Object TypeId -match 'PSTypeName'
$attribute.PSTypeName
