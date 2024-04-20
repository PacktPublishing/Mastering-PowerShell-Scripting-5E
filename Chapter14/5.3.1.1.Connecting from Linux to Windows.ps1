$params = @{
    HostName          = 'WindowsSystemNameOrIPAddress'
    Credential        = (Get-Credential)
    Authentication    = 'Basic'    
    UseSSL            = $true
    ConfigurationName = 'PowerShell.6.1.1'
}
Enter-PSSession @params
