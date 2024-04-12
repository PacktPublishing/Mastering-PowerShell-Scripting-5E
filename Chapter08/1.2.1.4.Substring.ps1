$myString = 'abcde'
$myString.Substring(0, 6)

# Expects output:
# 
# MethodInvocationException: Exception calling "Substring" with "1" argument(s): "startIndex cannot be larger than length of string. (Parameter 'startIndex')"
