[DateTime]$dateTime = Get-Date
Trace-Command -Expression { $dateTime = '1/1/1970' } -Name TypeConversion -PSHost

# Expects output:
# 
# DEBUG: 2024-03-24 12:27:29.2837 TypeConversion Information: 0 : Converting "1/1/1970" to "System.DateTime".
# DEBUG: 2024-03-24 12:27:29.2884 TypeConversion Information: 0 :     Parse result: 01/01/1970 00:00:00
