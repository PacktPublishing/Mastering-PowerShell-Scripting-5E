Trace-Command -Expression { [DateTime]'1/1/1970' } -Name TypeConversion -PSHost

# Expects output:
# 
# DEBUG: 2024-02-11 13:16:43.5705 TypeConversion Information: 0 : Parse result: 01/01/1970 00:00:00
# 
# 01 January 1970 00:00:00
