$temporaryValue = "Some-Value"
Write-Host $temporaryValue -ForegroundColor Green
Clear-Variable temporaryValue
Write-Host $temporaryValue -ForegroundColor Green

# Expects output:
# 
# Some-Value
