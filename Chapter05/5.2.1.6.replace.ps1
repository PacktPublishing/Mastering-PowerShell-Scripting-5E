'value1,value2,value3' -replace '(.*),(.*),(.*)', '$3,$2,$1' 
$1 = $2 = $3 = 'Oops'
'value1,value2,value3' -replace '(.*),(.*),(.*)', "$3,$2,$1"

# Expects output:
# 
# value3,value2,value1
# Oops,Oops,Oops 
