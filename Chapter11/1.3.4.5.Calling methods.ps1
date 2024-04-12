$invokeParams = @{
    ClassName  = 'Win32_Process'
    MethodName = 'Create'
    Arguments  = @{ 
        CommandLine = 'notepad.exe' 
    }
}
$return = Invoke-CimMethod @invokeParams

pause

$getParams = @{
    ClassName = 'Win32_Process'
    Filter    = 'ProcessId={0}' -f $return.ProcessId
}
Get-CimInstance @getParams | 
    Invoke-CimMethod -MethodName Terminate 
