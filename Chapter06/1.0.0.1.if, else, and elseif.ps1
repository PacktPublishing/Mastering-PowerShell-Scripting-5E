$value = 1 
if ($value -eq 1) { 
    Write-Host 'value is 1'
} elseif ($value -lt 10) {
    Write-Host 'value is less than 10' 
} else {
    Write-Host 'value is not equal to 1'
}

# Expects output:
# 
# value is 1
