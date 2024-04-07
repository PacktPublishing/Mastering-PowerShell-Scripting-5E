$pattern = '[0-9]+(\.[0-9]+)*'

# Expects output:
# 
# @(
#     'v1'
#     'Ver 1.000.232.14'
#     'Version: 0.92'
#     'Version-7.92.1-alpha'
# ) | Where-Object { $_ -match '[0-9]+(\.[0-9]+)*' } | 
#     ForEach-Object { $matches[0] }
