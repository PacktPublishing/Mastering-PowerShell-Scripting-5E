@(
    "Name,Phone,Age"
    "David,012345,28"
) | ConvertFrom-Csv

# Expects output:
# 
# Name  Phone   Age
# ----  -----   ---
# David 012345   28
