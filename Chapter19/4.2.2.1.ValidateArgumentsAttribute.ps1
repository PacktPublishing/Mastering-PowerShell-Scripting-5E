using namespace System.Management.Automation

class ValidateAlphabeticalOrder : ValidateArgumentsAttribute {
    [void] Validate(
        [object]           $arguments,
        [EngineIntrinsics] $engineIntrinsics
    ) {
        $values = @($arguments)
        for ($i = 1; $i -lt $values.Count; $i++) {
            if ($values[$i] -lt $values[$i - 1]) {
                throw 'Arguments must be in alphabetical order.'
            }
        }
    }
}
