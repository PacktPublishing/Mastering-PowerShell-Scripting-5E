$nodes = $xml.SelectNodes('//car[colour="Blue"]')
if ($nodes) {
    Write-Host "A blue car record exists"
}
