New-Object Object |
    Add-Member Username 'username' -PassThru |
    Add-Member Email 'name@domain.com' -PassThru

# Expects output:
# 
# Username Email
# -------- -----
# username name@domain.com
