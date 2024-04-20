Get-Variable | Select-Object Name, Description

# Expects output:
# 
# [string]$variable = 'Hello world'
# Get-Variable variable | ForEach-Object Attributes
