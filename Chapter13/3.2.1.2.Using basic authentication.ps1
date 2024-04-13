$params = @{
    Uri            = 'https://api.github.com/user/emails'
    Credential     = $credential
    Authentication = 'Basic'
}
Invoke-RestMethod @params
