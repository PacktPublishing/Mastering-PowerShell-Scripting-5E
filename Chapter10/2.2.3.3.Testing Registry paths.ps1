# Attempt to open the key
$null -eq [Microsoft.Win32.RegistryKey]::OpenBaseKey(
    'LocalMachine',
    'Registry64'
).OpenSubKey(
    'Software\Microsoft'
)
