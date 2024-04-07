using namespace System.Security.AccessControl

[FileSystemRights].GetEnumNames() | ForEach-Object {
    $value = $_ -as [FileSystemRights]
    [PSCustomObject]@{
        Name    = $_
        Value   = [int]$value
        Binary  = [Convert]::ToString(
            [int]$value , 2
        ).PadLeft(32, '0')
    }
}
