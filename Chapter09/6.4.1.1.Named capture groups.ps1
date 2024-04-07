if ('first second third' -match '(first) (second) (third)') { 
    [PSCustomObject]@{ 
        One   = $matches[1] 
        Two   = $matches[2] 
        Three = $matches[3] 
    } 
} 

# Expects output:
# 
# One   Three Two 
# ---   ----- --- 
# first third second 
