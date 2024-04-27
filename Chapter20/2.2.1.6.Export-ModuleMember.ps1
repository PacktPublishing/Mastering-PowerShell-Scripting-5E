Get-Module -Name LocalMachine | ForEach-Object ExportedCommands

# Expects output:
# 
# Key                        Value
# ---                        -----
# Get-ComputerDescription    Get-ComputerDescription
# GetRegistryParameters      GetRegistryParameters
# Remove-ComputerDescription Remove-ComputerDescription
# Set-ComputerDescription    Set-ComputerDesciption
