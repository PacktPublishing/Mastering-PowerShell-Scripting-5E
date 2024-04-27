[NoRunspaceAffinity()]
class NoAffinity {
    [void] Run() {
        [Console]::WriteLine(
            'Runspace: {0}; Time: {1:HH:mm:ss.fff}' -f @(
                [Runspace]::DefaultRunspace.Id
                Get-Date
            )
        )
        Start-Sleep -Seconds 2
    }
}

1..5 | ForEach-Object {
    $instance = [NoAffinity]::new()
    [PowerShell]::Create().
        AddScript('$args[0].Run()').
        AddArgument($instance).BeginInvoke() | Out-Null
}

# Expects output:
# 
# Runspace: 6; Time: 12:47:40.839
# Runspace: 2; Time: 12:47:40.839
# Runspace: 5; Time: 12:47:40.839
# Runspace: 4; Time: 12:47:40.839
# Runspace: 3; Time: 12:47:40.839
