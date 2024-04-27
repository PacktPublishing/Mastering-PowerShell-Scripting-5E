function Test-BoundParameter {
    param (
        [string]
        $Name
    )
    $PSBoundParameters.ContainsKey('Name')
}
