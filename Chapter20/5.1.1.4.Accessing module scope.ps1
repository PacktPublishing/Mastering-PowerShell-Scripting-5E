Connect-Service -Name NewConnection
& (Get-Module SomeService) { $connection }

# Expects output:
# 
# NewConnection
