$wsdl.SelectNodes(
    '/*/*/*/s:simpleType[s:restriction/s:enumeration]',
    $xmlNamespaceManager
) | ForEach-Object {
    [PSCustomObject]@{
        Name   = $_.name
        Values = $_.restriction.enumeration.value
    }
}
