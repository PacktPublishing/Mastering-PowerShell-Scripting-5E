using namespace System.Management.Automation

$parameter = [RuntimeDefinedParameter]::new(
    'Action',
    [string],
    [Attribute[]]@(
        [Parameter]@{ Mandatory = $true; Position = 1 }
        [ValidateSet]::new('Start', 'Stop', 'Create', 'Delete')
    )
)
