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
                [Parameter]@{ Position = 1 }
                [ValidateSet]::new(
                    'Start',
                    'Stop',
                    'Create',
                    'Delete'
                )
            )
        )
        $parameter.Value = 'Start'
        $parameters.Add($parameter.Name, $parameter)
        $parameters
    }

    end {
        $parameters['Action'].Value
    }
}
