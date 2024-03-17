Get-Process -Id $PID | Format-List

# Expects output:
# 
# Id      : 5512
# Handles : 1062
# CPU     : 9.859375
# SI      : 1
# Name    : pwsh
