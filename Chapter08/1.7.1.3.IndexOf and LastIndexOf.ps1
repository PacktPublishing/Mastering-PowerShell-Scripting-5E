$string = 'First,Second,Third'
$string.Substring(
    # startIndex (6)
    $string.IndexOf(',') + 1, 
    # length (6)
    $string.LastIndexOf(',') - $string.IndexOf(',') - 1 
)

# Expects output:
# 
# Second 
