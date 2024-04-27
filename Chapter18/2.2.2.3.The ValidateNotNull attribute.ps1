Test-ValidateNotNullOrEmpty -Parameter @(1, $null, 2)

# Expects output:
# 
# Test-ValidateNotNullOrEmpty: Cannot validate argument on parameter 'Parameter'. The argument is null, empty, or an element of the argument collection contains a null value. 
