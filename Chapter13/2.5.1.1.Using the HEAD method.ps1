$uri = 'https://github.com/PowerShell/PowerShell/releases/download/v7.3.6/PowerShell-7.3.6-win-x64.msi'
$response = Invoke-WebRequest $uri -Method HEAD
$response.Headers['Content-Length']
