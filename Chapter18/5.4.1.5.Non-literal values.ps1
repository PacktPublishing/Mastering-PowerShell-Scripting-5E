function Test-ArgumentCompleter {
    param (
        [Parameter(Mandatory)]
        [object]
        $InputObject,
        
        [ArgumentCompleter({
            param (
                $commandName,
                $parameterName,
                $wordToComplete,
                $commandAst,
                $fakeBoundParameter
            )

            $object = $fakeBoundParameter['InputObject']
            $properties = $object.PSObject.Properties.Name
            foreach ($name in $properties) {
                if ($name -notlike "$wordToComplete*") {
                    continue
                }

                $text = $name
                if ($text -match '\s') {
                    $text = "'{0}'" -f $text
                }
                $text
                "@{{ Name = '{0}'; Expression = '' }}" -f $name
                "@{{ Name = '{0}'; Expression = {{ `$_.{1} }} }}" -f $name, $text
            }
        })]
        $Property
    )
}
