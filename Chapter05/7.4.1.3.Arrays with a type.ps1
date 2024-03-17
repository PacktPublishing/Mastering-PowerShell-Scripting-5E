[Int32[]]$myNumbers = 1, 2, $null, "A string"

# Expects output:
# 
# MetadataError: Cannot convert value "A string" to type "System.Int32". Error: "Input string was not in a correct format."
