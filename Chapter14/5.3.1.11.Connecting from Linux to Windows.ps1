$params = @{
    HostName     = 'WindowsSystemNameOrIPAddress'
    UserName     = 'username' 
    SSHTransport = $true
    KeyFilePath  = '~\.ssh\id_rsa'
}
Enter-PSSession @params
