'C:\long\path\to\some\files' -match '.*?\\'
$matches[0]

# Expects output:
# 
# True
# 
# C:\
