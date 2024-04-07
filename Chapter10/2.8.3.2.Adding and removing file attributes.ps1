[System.IO.FileAttributes].GetEnumValues() | ForEach-Object {
    [PSCustomObject]@{
        Name   = $_
        Value  = [int]$_
        Binary = [Convert]::ToString([int]$_, 2).PadLeft(32, '0')
    }
}
