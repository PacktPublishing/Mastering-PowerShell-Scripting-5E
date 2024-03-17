$process = Get-Process -Id $PID
$format = Get-FormatData -TypeName $process.PSTypeNames
