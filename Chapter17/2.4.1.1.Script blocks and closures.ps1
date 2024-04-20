$string = "first value"
$scriptBlock = { $string }
& $scriptBlock

# Expects output:
# 
# first value
