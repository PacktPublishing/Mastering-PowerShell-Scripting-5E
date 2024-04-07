'The Cat in the Hat' -cmatch '[A-Z][a-z]+ (?i)[a-z]+(?-i) [a-z ]+'
$matches

# Expects output:
# 
# True
# 
# 
# Name                           Value
# ----                           -----
# 0                              The Cat in the
