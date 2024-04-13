$httpListener = [System.Net.HttpListener]::new()
$httpListener.Prefixes.Add('http://localhost:40000/') 
$httpListener.Start()
$authorizeUrl = 'https://github.com/login/oauth/authorize?client_id={0}&scope={1}' -f @(
    $clientId
    'user:email'
)
# Let the operating system choose the browser to use for this request
Start-Process -FilePath $authorizeUrl
$context = $httpListener.GetContext()
$buffer = [byte[]][char[]]"<html><body>OAuth complete! Please return to PowerShell!</body></html>"
$context.Response.OutputStream.Write(
    $buffer,
    0,
    $buffer.Count
)
$context.Response.OutputStream.Close()
$httpListener.Stop()
$authorizationCode = $context.Request.QueryString['code']
