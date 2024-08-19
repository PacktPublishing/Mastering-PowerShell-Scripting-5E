$examResults | Sort-Object @(
    {
        switch ($_.Result) {
            'Pass' { 1 }
            'Fail' { 2 }
            'N/A'  { 3 }
        }
    }
    @{ Expression = { $_.Mark }; Descending = $true }
)

# Expects output:
#
# Exam     Result    Mark
# ----     ------    ----
# Maths      Pass      92
# Physics    Pass      86
# Biology    Pass      78
# History    Fail      23
# Music       N/A       0
