$dir = [PSCustomObject]@{ Path = (Get-Item ~).FullName }
FindStr /D:$($dir.Path) SomeValue *.txt
