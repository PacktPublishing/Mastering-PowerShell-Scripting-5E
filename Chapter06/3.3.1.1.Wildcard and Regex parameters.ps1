switch -Wildcard ('cat') {
    'c*'        { Write-Host 'The word begins with c' } 
    '???'       { Write-Host 'The word is 3 characters long' } 
    '*t'        { Write-Host 'The word ends with t' } 
    '*[aeiou]*' { Write-Host 'The word contains a vowel' }
} 

# Expects output:
# 
# The word begins with c
# The word is 3 characters long
# The word ends with t
# The word contains a vowel
