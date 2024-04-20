function first { process { $_ } } # end block by default
1..2 | first                      # explicit process

# Expects output:
# 
# 1
# 2
