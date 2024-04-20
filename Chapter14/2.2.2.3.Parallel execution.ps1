$output = Invoke-Command localhost { 1 }
$output
$output.PSComputerName

# Expects output:
# 
# 1
# localhost
