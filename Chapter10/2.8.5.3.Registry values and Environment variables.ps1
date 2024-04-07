using namespace Microsoft.Win32
 
$key = Get-Item 'HKCU:\Environment'
$key.GetValue(
    'TestValue',
    $null,
    [RegistryValueOptions]::DoNotExpandEnvironmentNames
)
