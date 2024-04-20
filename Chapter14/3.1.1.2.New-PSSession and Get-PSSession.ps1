Get-PSSession | Select-Object Id, ComputerName, State

# Expects output:
# 
# Id ComputerName State
# -- ------------ -----
#  1 PSTEST       Opened
