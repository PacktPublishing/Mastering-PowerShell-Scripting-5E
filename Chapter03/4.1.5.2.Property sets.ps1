Get-Process -Id $PID | Select-Object -Property PSConfiguration

# Expects output:
# 
# Name   Id PriorityClass FileVersion
# ----   -- ------------- -----------
# pwsh 2220        Normal 7.4.1.500
