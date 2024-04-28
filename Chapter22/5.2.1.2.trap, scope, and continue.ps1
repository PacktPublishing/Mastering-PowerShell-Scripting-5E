& { 
    function Invoke-Something { 
        Write-Host 'Statement1' 
        throw 'Statement2' 
        Write-Host 'Statement3' 
    } 
 
    Invoke-Something 
    Write-Host 'Done' 
 
    trap { 
        Write-Host 'An error occurred' 
        continue 
    } 
} 

# Expects output:
# 
# Statement1
# An error occurred
# Done
