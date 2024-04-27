Invoke-ScriptAnalyzer @params

# Expects output:
# 
# RuleName                Severity ScriptName Line Message
# --------                -------- ---------- ---- -------
# PSAvoidEmptyNamedBlocks Warning  script.ps1 4    Empty Begin ...
# PSAvoidEmptyNamedBlocks Warning  script.ps1 5    Empty Process...
