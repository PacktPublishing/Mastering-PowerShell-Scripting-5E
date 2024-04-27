$params = @{
    Path   = '.\ServiceState.tests.ps1'
    Output = 'Detailed'
}
Invoke-Pester @params

# Expects output:
# 
# Starting discovery in 1 files.
# Discovering in C:\workspace\ServiceState.tests.ps1.
# Found 3 tests. 11ms
# Discovery finished in 16ms.
# Running tests from 'C:\workspace\ServiceState.tests.ps1'
# Describing Set-ServiceState
#   [+] Service is running, expected running 16ms (13ms|3ms)
#   [+] Service is stopped, expected running 15ms (15ms|1ms)
#   [+] Service is running, expected stopped 24ms (22ms|1ms)
# Tests completed in 188ms
# Tests Passed: 3, Failed: 0, Skipped: 0 NotRun: 0
