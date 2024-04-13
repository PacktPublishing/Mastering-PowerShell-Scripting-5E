using namespace System.Net
using namespace System.Security.Cryptography.X509Certificates

class AcceptAllPolicy: ICertificatePolicy { 
    [bool] CheckValidationResult( 
        [ServicePoint] $servicePoint, 
        [X509Certificate] $certificate, 
        [WebRequest] $webRequest, 
        [int] $problem
    ) { 
        return $true 
    }
} 
[ServicePointManager]::CertificatePolicy = [AcceptAllPolicy]::new() 
