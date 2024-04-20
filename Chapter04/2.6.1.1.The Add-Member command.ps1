$dir = Get-ChildItem
$dir | Add-Member -NotePropertyName ComputerName -NotePropertyValue $env:COMPUTERNAME
