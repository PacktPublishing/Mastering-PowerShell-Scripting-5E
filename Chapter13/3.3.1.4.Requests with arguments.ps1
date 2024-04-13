$params = @{
    Uri            = 'https://api.github.com/search/code'
    Body           = @{
        q = 'Get-Content language:powershell repo:powershell/powershell'
    }
    Credential     = $credential
    Authentication = 'Basic'
}
Invoke-RestMethod @params
