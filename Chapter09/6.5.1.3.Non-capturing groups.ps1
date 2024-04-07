'first second third' -replace '(first) (?:(second) (third))',
     '$3, $2, $1'

# Expects output:
# 
# 
# third, second, first
