Get-Item . -ErrorAction Ignore || Write-Host ‘Does not exist’

# Expects output:
# 
#         Directory: C:\
# 
# Mode                LastWriteTime         Length Name
# ----                -------------         ------ ----
# d----        21/01/2024     12:53                workspace
