﻿$result = 1..2 | Show-Pipeline | Show-Pipeline

# Expects output:
# 
# Pipeline position 1: Start
# Pipeline position 2: Start
# Pipeline position 1: 1
# Pipeline position 2: 1
# Pipeline position 1: 2
# Pipeline position 2: 2
