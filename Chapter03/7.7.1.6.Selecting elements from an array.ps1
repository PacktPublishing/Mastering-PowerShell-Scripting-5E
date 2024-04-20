$myArray[@(0) + 6..8 + -1] 
$myArray[0..0 + 6..8 + -1] 
$myArray[@(0; 6..8; -1)]

# Expects output:
# 
# 1
# 7
# 8
# 9
# 10
