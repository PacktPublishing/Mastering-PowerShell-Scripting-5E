$myArray | Where-Object { $_ -lt 3 -or $_ -gt 7 }

# Expects output:
# 
# 1
# 2
# 8
# 9
# 10
