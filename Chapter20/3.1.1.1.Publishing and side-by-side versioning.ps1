$params = @{
    Path       = '.\LocalMachine\3.0.0'
    Repository = 'PSLocal'
}
Publish-Module @params
