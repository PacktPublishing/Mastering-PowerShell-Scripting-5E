$array = @(
    'Anna'
    'Ben'
    'Chris'
    'David'
)
if ($array -notmatch '^[ab]') {
    Write-Host "No names starting A or B"
}

# Expects output:
# 
# No names starting A or B
