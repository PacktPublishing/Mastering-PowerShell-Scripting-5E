$actionParam = [RuntimeDefinedParameter]::new(
    'Action',
    [string],
    [Attribute[]]@(
        [Parameter]@{ Position = 1 }
        [ValidateSet]::new(
            'Start',
            'Stop',
            'Create',
            'Delete'
        )
    )
)
$actionParam.Value = 'Start'
