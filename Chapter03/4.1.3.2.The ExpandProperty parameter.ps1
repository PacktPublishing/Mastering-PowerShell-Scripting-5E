Get-ChildItem $env:SYSTEMROOT\*.dll |
    Select-Object FullName, Length -ExpandProperty VersionInfo |
    Format-List *
