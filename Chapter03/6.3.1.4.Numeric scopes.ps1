third

# Expects output:
# 
# Get-Variable:
# Line |
#    3 |          Get-Variable -Name name -Scope 2 -ValueOnly
#      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#      | The scope number '2' exceeds the number of active scopes. (Parameter 'Scope')
# Actual value was 2.
# Get-Variable:
# Line |
#    6 |          Get-Variable -Name name -Scope 1 -ValueOnly
#      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#      | Cannot find a variable with the name 'name'.
