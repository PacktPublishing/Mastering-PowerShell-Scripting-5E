'{string}' -match '\{string\}'
'string{123}' -match 'string\{123\}'

# Expects output:
# 
# True
# 
# True
