using namespace System.Management.Automation

$parameter = [RuntimeDefinedParameter]::new(
    'Action',
    [string],
    [Attribute[]]@(
        [Parameter]@{
            Mandatory        = $true
            Position         = 1
            ParameterSetName = 'First'
        }
        [Parameter]@{
            ParameterSetName = 'Second'
        }
    )
)
