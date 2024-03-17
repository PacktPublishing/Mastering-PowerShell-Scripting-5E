$examResults | Sort-Object { 
    switch ($_.Result) { 
        'Pass' { 1 } 
        'Fail' { 2 } 
        'N/A'  { 3 } 
    } 
}, Mark

# Expects output:
# 
# Exam     Result    Mark
# ----     ------    ----
# Biology    Pass      78
# Physics    Pass      86
# Maths      Pass      92
# History    Fail      23
# Music       N/A       0
