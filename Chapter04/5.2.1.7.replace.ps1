'0', '4', $PID -replace '.+', { (Get-Process -Id $_.Value).Name }
