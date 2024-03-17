$properties = @(
    'FullName'
    'Length'
)

$item = Get-Item (Get-Process -Id $PID).Path

$customObject = [Ordered]@{}
$properties | ForEach-Object {
    $customObject.$_ = $item.$_
}
[PSCustomObject]$customObject
