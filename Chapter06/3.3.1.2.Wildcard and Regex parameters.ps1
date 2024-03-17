switch -Regex ('cat') {
 '^c'      { Write-Host 'The word begins with c' }
  '^.{3}$' { Write-Host 'The word is 3 characters long' }
  't$'     { Write-Host 'The word ends with t' }
} 

# Expects output:
# 
# The word begins with c
# The word is exactly 3 characters long
# The word ends with t
