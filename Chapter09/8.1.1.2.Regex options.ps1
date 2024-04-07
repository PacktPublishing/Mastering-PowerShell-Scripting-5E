"First line`nSecond line" -match '(?s).+'
$matches[0]

# Expects output:
# 
# True
# First line
# Second line
