# Or enumerate subkeys of the parent
[Microsoft.Win32.RegistryKey]::OpenBaseKey(
    'LocalMachine',
    'Registry64'
).OpenSubKey(
    'Software'
).GetSubKeyNames() -contains 'Microsoft'
