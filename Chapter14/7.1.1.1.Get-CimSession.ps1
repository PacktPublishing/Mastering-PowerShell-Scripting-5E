Get-CimSession | Select-Object Id, ComputerName, Protocol

# Expects output:
# 
# Id   ComputerName Protocol
# --   ------------ --------
#  1   PSTEST       WSMAN
#  2   localhost    DCOM
#  3   PSTEST       DCOM
