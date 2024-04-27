Invoke-Pester -Path workstation.tests.ps1 -Output Detailed

# Expects output:
# 
# Pester v5.5.0
# 
# Starting discovery in 1 files.
# Discovery found 2 tests in 12ms.
# Running tests.
# 
# Running tests from 'C:\workspace\workstation.tests.ps1'
# Describing PS developer workstation
#   [+] PowerShell 7 is installed 13ms (4ms|9ms)
#   [+] Workspace must exist 5ms (4ms|0ms)
# Tests completed in 53ms
# Tests Passed: 2, Failed: 0, Skipped: 0 NotRun: 0 
