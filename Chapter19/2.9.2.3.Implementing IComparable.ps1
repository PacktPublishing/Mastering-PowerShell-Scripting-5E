$first = [MyClass]@{ Number = 1 }
$second = [MyClass]@{ Number = 2 }
$first -lt $second
$first -gt $second

# Expects output:
# 
# True
# False
