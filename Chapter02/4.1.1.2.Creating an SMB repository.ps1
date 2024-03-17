$params = @{
    Name            = 'pester'
    RequiredVersion = '5.4.0'
    Repository      = 'Internal'
}
Publish-Module @params
