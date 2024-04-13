$params = @{
    Uri                     = 'https://api.github.com/search/issues'
    Body                    = @{
       q = 'documentation state:closed repo:powershell/powershell'
    }
    ResponseHeadersVariable = 'httpHeader'
    Credential              = $credential
    Authentication          = 'Basic'
}
Invoke-RestMethod @params | Select-Object -ExpandProperty items
