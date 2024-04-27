Import-Something
Get-Module Module
[ModuleClass]::new()

# Expects output:
# 
# ModuleType Version PreRelease Name   ExportedCommands
# ---------- ------- ---------- ----   ----------------
# Script     0.0.1              Module Get-Something
# 
# InvalidOperation: Unable to find type [ModuleClass].
