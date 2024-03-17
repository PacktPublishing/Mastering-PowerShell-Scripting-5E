using namespace System.Management.Automation

# Find the method based on the arguments it expects
$genericMethod = [LanguagePrimitives].GetMethod(
    'ConvertTo',
    [Type[]][object]
)
# Convert the generic method to a typed method
$method = $genericMethod.MakeGenericMethod([string])

# A value to convert
$value = Get-Date

# Invoke the method
$method.Invoke($null, $value)
