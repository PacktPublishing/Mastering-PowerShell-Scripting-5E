Get-Process -Id $PID | Select-Object ProcessName, 'NPM(K)'
