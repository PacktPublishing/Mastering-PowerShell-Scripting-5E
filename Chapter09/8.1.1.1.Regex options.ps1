"First line`nSecond line" -match '.+'
$matches[0]

# Expects output:
# 
# True
# First line
