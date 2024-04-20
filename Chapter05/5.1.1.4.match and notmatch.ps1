'Group one, Group two' -match 'Group (.*), Group (.*)'
$matches

# Expects output:
# 
# True
# Name                        Value
# ----                        ----- 
# 2                           two 
# 1                           one 
# 0                           Group one, Group two 
