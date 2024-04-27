param (
    [Parameter(Mandatory, Position = 1)]
    [ValidateSet('Start', 'Stop', 'Create', 'Delete')]
    [string]
    $Action
)
