Get-PSSession |
    Select-Object Name, ComputerName, State, Availability

# Expects output:
# 
# Name      ComputerName   State    Availability
# ----      ------------   -----    ------------
# Example   PSTest         Opened   Busy
