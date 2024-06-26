﻿using namespace System.Security.Cryptography.X509Certificates
using namespace System.Net.Security
using namespace System.Net.Sockets

$path = @{
    Path = '.\CertValidation.xml'
}

$remoteCertificateValidationCallback = {
    param (
        [object] $sender,
        [X509Certificate2] $certificate,
        [X509Chain] $chain,
        [SslPolicyErrors] $sslPolicyErrors
    )
    $PSBoundParameters | Export-CliXml @path 
    # Always indicate SSL negotiation was successful
    $true
}
try {
    [Uri]$uri = 'https://expired.badssl.com/'
    $tcpClient = [TcpClient]::new()
    $tcpClient.Connect($Uri.Host, $Uri.Port)
    $sslStream = [SslStream]::new(
        $tcpClient.GetStream(),
        # leaveInnerStreamOpen: Close when complete
        $false,
        $remoteCertificateValidationCallback
    )
    $sslStream.AuthenticateAsClient($Uri.Host)
} catch {
    throw
} finally {
    if ($tcpClient.Connected) {
        $tcpClient.Close()
    }
}
$certValidation = Import-CliXml @path
