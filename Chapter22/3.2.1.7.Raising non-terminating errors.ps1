1, 0, 2 | ForEach-Object {
    Invoke-Divide -Numerator 2 -Denominator $_
}

# Expects output:
# 
# 2
# Invoke-Divide:
# Line |
#    2 |      Invoke-Divide -Numerator 2 -Denominator $_
#      |      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#      | Attempted to divide by zero.
# 1
