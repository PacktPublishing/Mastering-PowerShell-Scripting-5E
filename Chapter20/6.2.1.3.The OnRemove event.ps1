Import-Module -Name .\OnRemove.psm1
Get-ChildItem -Path OnRemove.log

# Expects output:
# 
#         Directory: C:\Workspace
# 
# Mode                LastWriteTime         Length Name
# ----                -------------         ------ ----
# -a---        26/04/2024     10:19              0 OnRemove.log
