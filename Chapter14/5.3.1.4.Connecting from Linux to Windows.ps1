$params = @{
    DisplayName = 'OpenSSH Server (sshd)'
    Name        = 'sshd'
    Enabled     = 'True'
    Direction   = 'Inbound'
    LocalPort   = 22
    Protocol    = 'TCP'
    Action      = 'Allow'
}
New-NetFirewallRule @params
