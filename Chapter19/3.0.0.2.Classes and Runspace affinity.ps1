class WithAffinity {
    [void] Run() {
        [Console]::WriteLine([Runspace]::DefaultRunspace.Id)
    }
}

1..5 | ForEach-Object {
    $instance = [WithAffinity]::new()
    [PowerShell]::Create().
        AddScript('$args[0].Run()').
        AddArgument($instance).
        Invoke()
}
