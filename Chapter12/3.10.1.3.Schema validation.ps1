﻿$path = 'C:\Windows\System32\WindowsPowerShell\v1.0\modules\ISE\en-US\ISE-help.xml'
$schemaPath = 'C:\Windows\System32\WindowsPowerShell\v1.0\Schemas\PSMaml\maml.xsd'

$document = [Xml]::new()
$document.Load($path)
$document.Schemas.XmlResolver = [System.Xml.XmlUrlResolver]::new()
$document.Schemas.Add(
    'http://schemas.microsoft.com/maml/2004/10',
    $schemaPath
)
$validateResult = [System.Collections.Generic.List[object]]::new()
$document.Validate({
    param ($sender, $eventArgs)
    if ($eventArgs.Severity -in 'Error', 'Warning') {
        $validateResult.Add($eventArgs)
    }
})
