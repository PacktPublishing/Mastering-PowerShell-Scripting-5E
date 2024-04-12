$params = @{
    ClassName  = 'Win32_Process'
    MethodName = 'Create'
    Arguments  = @{ 
        CommandLine = 'notepad.exe' 
    }
} 
$returnObject = Invoke-CimMethod @params
$params = @{
    ClassName  = 'Win32_Process'
    Filter       = 'ProcessID={0}' -f $returnObject.ProcessID
}
$process = Get-CimInstance @params
