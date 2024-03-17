for ($i = 0; $i -le 5; $i++) { 
    Write-Host $i 
    if ($i -lt 2) { 
        continue    # Continue to the next iteration 
    } 
    Write-Host "Remainder when $i is divided by 2 is $($i % 2)" 
} 

# Expects output:
# 
# 0
# 1
# 2
# Remainder when 2 is divided by 2 is 0
# 3
# Remainder when 3 is divided by 2 is 1
# 4
# Remainder when 4 is divided by 2 is 0
# 5
# Remainder when 5 is divided by 2 is 1
