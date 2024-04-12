Get-CimInstance Win32_Directory -Filter "Name='C:\\Windows'" 
Get-CimInstance Win32_Service -Filter "State='Running'" 

# Expects output:
# 
# Name        Hidden  Archive  Writeable  LastModified
# ----        ------  -------  ---------  ------------
# C:\Windows  False   False    True       20/02/2021 09:25:20
