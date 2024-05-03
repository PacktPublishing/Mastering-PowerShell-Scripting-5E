Get-Module CimCmdlets
Get-CimInstance Win32_OperatingSystem | Out-Null
Get-Module CimCmdlets

# Expects output:
# 
# ModuleType Version    PreRelease Name
# ---------- -------    ---------- ----
# Binary     7.0.0.0               CimCmdlets
