Set-Location $env:TEMP
New-Item FileName.txt -Force
Set-ItemProperty FileName.txt -Name Attributes -Value Hidden
Remove-Item FileName.txt
