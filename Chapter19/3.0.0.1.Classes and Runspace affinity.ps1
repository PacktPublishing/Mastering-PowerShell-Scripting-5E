1..5 | ForEach-Object {
    [PowerShell]::Create().
        AddScript('[Runspace]::DefaultRunspace.Id').
        Invoke()
}

# Expects output:
# 
# 2
# 3
# 4
# 5
# 6
