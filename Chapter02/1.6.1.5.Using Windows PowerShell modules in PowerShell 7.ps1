$process = Get-WmiObject Win32_Process -Filter "ProcessID=$PID"
$process.GetRelated('Win32_Session')

# Expects output:
# 
# InvalidOperation: Method invocation failed because [Deserialized.System.Management.ManagementObject#root\cimv2\Win32_Process] does not contain a method named 'GetRelated'.
