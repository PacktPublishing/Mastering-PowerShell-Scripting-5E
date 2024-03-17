using namespace System.Management.Automation
# A value to convert
$value = Get-Date
[LanguagePrimitives]::ConvertTo[string]($value)
