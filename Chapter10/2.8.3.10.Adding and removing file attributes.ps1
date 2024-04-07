$file = Get-Item 'somefile.txt' -Force 
$file.Attributes = "$($file.Attributes), ReadOnly" 
