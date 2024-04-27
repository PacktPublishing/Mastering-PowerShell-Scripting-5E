New-Item ~\PSLocal -ItemType Directory
Register-PSRepository -Name PSLocal -Source ~\PSLocal

# Expects output:
# 
# Import-PSGetRepository
