Mock Get-Service @module -ParameterFilter {
    $Name -eq 'service1'
} {
    [PSCustomObject]@{
        Status = 'Running'
    }
}
Mock Get-Service @module -ParameterFilter {
    $Name -eq 'service2'
} -MockWith {
    [PSCustomObject]@{
        Status = 'Stopped'
    }
}
Mock Get-Service @module -ParameterFilter {
    $Name -eq 'service3'
} -MockWith {
    [PSCustomObject]@{
        Status = 'Running'
    }
}
