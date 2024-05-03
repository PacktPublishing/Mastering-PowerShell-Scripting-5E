$string = 'First,Second,Third'
$startIndex = $string.IndexOf(',') + 1
$length = $string.LastIndexOf(',') - $string.IndexOf(',') - 1
$string.Substring(
    $startIndex,
    $length
)

# Expects output:
# 
# Second 
