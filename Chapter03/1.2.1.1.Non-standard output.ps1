$computerSystem = Get-CimInstance Win32_ComputerSystem -Verbose

# Expects output:
# 
# VERBOSE: Perform operation 'Enumerate CimInstances' with following parameters, ''namespaceName' = root\cimv2,'className' = Win32_ComputerSystem'.
# VERBOSE: Operation 'Enumerate CimInstances' complete.
