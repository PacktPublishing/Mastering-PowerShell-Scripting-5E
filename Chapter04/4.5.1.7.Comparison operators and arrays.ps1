$value = 'one', 'two', 'three'

# Will find the values two and three
$value -like 't*'   

# True because the array of results is not empty
[bool]($value -like 't*')

# Negates the result above, simulating -notlike on a single value
-not ($values -like 't*')
