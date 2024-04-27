using namespace System.Security.AccessControl

$names = [FileSystemRights].GetEnumNames() |
    Select-Object -First 5
foreach ($name in $names) {
    $value = $name -as [FileSystemRights] -as [int]
    [PSCustomObject]@{
        Name   = $name
        Value  = $value
        Binary = [Convert]::ToString($value, 2).PadLeft(4, '0')
    }
}

# Expects output:
# 
# Name          Value Binary
# ----          ----- ------
# ReadData          1 0001
# ListDirectory     1 0001
# WriteData         2 0010
# CreateFiles       2 0010
# AppendData        4 0100
