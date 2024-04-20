Start-Job -ScriptBlock { Start-Sleep -Seconds 10 }

# Expects output:
# 
# Id  Name  PSJobTypeName  State    HasMoreData  Location   Command
# --  ----  -------------  -----    -----------  --------   -------
#  1  Job1  BackgroundJob  Running        True   localhost  Start-Sleep -Seconds 10
