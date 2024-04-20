filter second { $_ }              # process block by default
1..2 | second                     # implicit process

# Expects output:
# 
# 1
# 2
