$params = @{
    Name = @(
        '*-Item*'
        '*-ChildItem'
        '*-Content'
        '*-Acl'
        '*-Location'
        '*-Path'
    )
    Module = @(
        'Microsoft.PowerShell.Management'
        'Microsoft.PowerShell.Security'
    )
}
Get-Command @params
