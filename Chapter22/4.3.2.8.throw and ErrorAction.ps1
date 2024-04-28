$Error.Clear()
Invoke-Something -ErrorAction SilentlyContinue
$Error[0]

# Expects output:
# 
# Exception:
# Line |
#    9 |          throw 'An error occurred'
#      |          ~~~~~~~~~~~~~~~~~~~~~~~~~
#      | An error occurred
