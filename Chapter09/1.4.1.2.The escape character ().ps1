'domain\user' -match 'domain\\user' 
'domain\user' -match '.*\\.*' 

# Expects output:
# 
# True
# 
# True
