$jobs = for ($i = 0; $i -lt 5; $i++) {
    $instance = [PowerShell]::Create()
    $null = $instance.
        AddScript($script).
        AddParameters(@{
            Path         = Join-Path $pwd -ChildPath runspace.log
            RunspaceName = $instance.Runspace.Name
        })

    [PSCustomObject]@{
        Id          = $instance.InstanceId
        Instance    = $instance
        AsyncResult = $null
    } | Add-Member State -MemberType ScriptProperty -PassThru -Value {
        $this.Instance.InvocationStateInfo.State
    }
}

foreach ($job in $jobs) {
    $job.AsyncResult = $job.Instance.BeginInvoke()
}

while ($jobs.State -contains 'Running') {
    Start-Sleep -Seconds 5
}
