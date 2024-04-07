Set-Content C:\Temp\FileCatalog\3\3.txt -Value 'New content'
$params = @{
    Path            = 'C:\Temp\FileCatalog'
    CatalogFilePath = 'C:\Temp\Security\example.cat'
}
Test-FileCatalog @params
