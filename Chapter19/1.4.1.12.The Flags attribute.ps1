Get-FlagName -Value ([MyEnum]::FirstAndThird)

# Expects output:
# 
#  Name Integer Hexadecimal BitPosition
#  ---- ------- ----------- -----------
# First       1 0x00000001            1
# Third       4 0x00000004            3
