$first = [MyClass]@{ Number = 1 }
$second = [MyClass]@{ Number = 1 }
$first -ge $second
$first -le $second

# Expects output:
# 
# True
# True
