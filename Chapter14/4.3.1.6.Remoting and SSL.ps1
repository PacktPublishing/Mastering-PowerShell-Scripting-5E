$options = New-PSSessionOption -SkipCACheck 
$session = New-PSSession $env:COMPUTERNAME -SessionOption $options 
