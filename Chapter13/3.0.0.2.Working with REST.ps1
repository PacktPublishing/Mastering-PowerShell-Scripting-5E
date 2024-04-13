$ps = Invoke-RestMethod  https://www.reddit.com/r/powershell.json
$ps.data.children.data |
    Select-Object author, created, title -First 1

# Expects output:
# 
# author             created title
# ------             ------- -----
# AutoModerator 1711972834.0 What have you done with PowerShell ...
