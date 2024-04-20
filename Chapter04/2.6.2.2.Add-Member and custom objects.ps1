$customObject = New-Object Object
$customObject | Add-Member -NotePropertyName Username -NotePropertyValue 'username'
$customObject | Add-Member -NotePropertyName Email -NotePropertyValue 'name@domain.com'
$customObject

# Expects output:
# 
# Username Email
# -------- -----
# username name@domain.com
