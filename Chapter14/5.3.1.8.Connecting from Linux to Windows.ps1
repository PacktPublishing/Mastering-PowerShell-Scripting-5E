$params = @{
    HostName     = 'WindowsSystemNameOrIPAddress'
    UserName     = $env:USERNAME
    SSHTransport = $true
}
Enter-PSSession @params
