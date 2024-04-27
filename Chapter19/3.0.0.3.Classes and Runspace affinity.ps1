class WithAffinity {
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
    $instance = [WithAffinity]::new()
    [PowerShell]::Create().
        AddScript('$args[0].Run()').
        AddArgument($instance).BeginInvoke() | Out-Null
}

# Expects output:
#
# Runspace: 1; Time: 12:43:30.671
# Runspace: 1; Time: 12:43:32.685
# Runspace: 1; Time: 12:43:34.693
# Runspace: 1; Time: 12:43:36.702
# Runspace: 1; Time: 12:43:38.710
