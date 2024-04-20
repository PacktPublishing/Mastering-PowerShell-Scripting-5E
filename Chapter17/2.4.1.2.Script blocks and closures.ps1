$scriptBlock = { $string }
$string = "second value"
& $scriptBlock

# Expects output:
# 
# second value
