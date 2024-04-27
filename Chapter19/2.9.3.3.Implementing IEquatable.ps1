$first = [MyClass]@{ Number = 1 }
$second = [MyClass]@{ Number = 1 }
$first -eq $second

# Expects output:
# 
# True
