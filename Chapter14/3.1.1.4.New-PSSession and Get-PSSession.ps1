Get-PSSession -ComputerName PSTest |
    Select-Object Name, ComputerName, State

# Expects output:
# 
# Name     ComputerName  State
# ----     ------------  -----
# Example  PSTest        Disconnected
