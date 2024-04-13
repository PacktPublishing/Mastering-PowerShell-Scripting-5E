$ProgressPreference = 'SilentlyContinue'
$uri = 'https://github.com/PowerShell/PowerShell/releases/download/v7.3.6/PowerShell-7.3.6-win-x64.msi'
Invoke-WebRequest $uri -OutFile (Split-Path $uri -Leaf)
