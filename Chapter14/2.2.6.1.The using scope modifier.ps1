$hello = 'Hello world'
Invoke-Command { $using:hello } -ComputerName localhost
