'Name (first or full): Bob' -match '^[a-z]+.*(?-i)([A-Z].+)$'
$matches[1]

# Expects output:
# 
# True
# Bob
