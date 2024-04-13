[Xml]$xml = @" 
<?xml version="1.0"?> 
<list type='numbers'> 
    <name>1</name> 
</list> 
"@
$newElement = $xml.CreateElement('name') 
$newElement.InnerText = 2 
$null = $xml.list.AppendChild($newElement) 
