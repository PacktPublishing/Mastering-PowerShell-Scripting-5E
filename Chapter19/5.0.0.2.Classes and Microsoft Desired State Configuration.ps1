enum Ensure {
    Absent
    Present
}

[DscResource()]
class ComputerDescription {
    [DscProperty(Key)]
    [Ensure]$Ensure

    [DscProperty()]
    [string]$Description

    hidden $path = ‘HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters’
    hidden $valueName = ‘svrcomment’

    [ComputerDescription] Get() { return $this }

    [void] Set() { }

    [bool] Test() { return $true }
}
