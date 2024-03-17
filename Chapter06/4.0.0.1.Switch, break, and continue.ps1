$value = 1 
switch ($value) { 
    1 { Write-Host 'value is 1' } 
    1 { Write-Host 'value is still 1' } 
} 

# Expects output:
# 
# value is 1
# value is still 1
