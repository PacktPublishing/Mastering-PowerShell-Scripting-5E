$examResults | Sort-Object { 
    switch ($_.Result) { 
         'Pass' { 1 } 
         'Fail' { 2 } 
         'N/A'  { 3 } 
    } 
}, Mark -Descending

# Expects output:
# 
# Exam     Result    Mark
# ----     ------    ----
# Music       N/A       0
# History    Fail      23
# Maths      Pass      92
# Physics    Pass      86
# Biology    Pass      78
