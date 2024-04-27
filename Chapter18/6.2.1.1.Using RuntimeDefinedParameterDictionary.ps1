using namespace System.Management.Automation

function Test-DynamicParam {
    [CmdletBinding()]
    param ( )

    dynamicparam {
        $parameters = [RuntimeDefinedParameterDictionary]::new()

        $parameter = [RuntimeDefinedParameter]::new(
            'Action',
            [string],
            [Attribute[]]@(
                [Parameter]@{ Mandatory = $true; Position = 1 }
                [ValidateSet]::new(
                    'Start',
                    'Stop',
                    'Create', 
                    'Delete'
                )
            )
        )
        $parameters.Add($parameter.Name, $parameter)
        $parameters
    }
}
