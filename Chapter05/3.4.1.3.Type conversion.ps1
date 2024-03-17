[DateTime]$dateTime = Get-Date
Trace-Command -Expression { $dateTime = '1/1/1970' } -Name TypeConversion -PSHost
