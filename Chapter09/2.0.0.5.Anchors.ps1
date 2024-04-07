'The first day is Monday' -replace '\bday\b', 'night' 
'Monday is the first day' -replace '\bday\b', 'night' 

# Expects output:
# 
# The first night is Monday
# 
# Monday is the first night
