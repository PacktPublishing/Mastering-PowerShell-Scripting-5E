Set-Content C:\Data\test.mdb 1
Import-Csv C:\Audit\DataActivity.log

# Expects output:
# 
# Date                  ChangeType  FullPath          User
# ----                  ----------  --------          ----
# 2024-04-20 10:43:04Z  Changed     C:\Data\test.mdb  Phil
