$string = 'first value'
$scriptBlock = { $string }.GetNewClosure()
$string = 'second value'
& $scriptBlock

# Expects output:
# 
# first value
