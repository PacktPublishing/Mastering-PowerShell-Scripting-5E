[ValidateNotNull()]$variable = 1
$variable = $null

# Expects output:
# 
# MetadataError: The variable cannot be validated because the value $null is not a valid value for the variable variable.
