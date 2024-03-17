$computerName = $env:COMPUTERNAME
"$ComputerName: Running PS $PSEdition"

# Expects output:
# 
# ParserError:
# Line |
#    1 |  "$ComputerName: Running PS $PSEdition"
#      |   ~~~~~~~~~~~~~~
#      | Variable reference is not valid. ':' was not followed by
#      | a valid variable name character. Consider using ${} to
#      | delimit the name.
