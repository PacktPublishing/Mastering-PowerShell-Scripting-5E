"David,012345,28" | ConvertFrom-Csv -Header Name, Phone, Age 

# Expects output:
# 
# Name  Phone   Age
# ----  -----   ---
# David 012345   28
