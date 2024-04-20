$computerNames = Get-ADGroupMember GroupName |
    Get-ADComputer -Properties DnsHostName |
    Select-Object -ExpandProperty DnsHostName
Invoke-Command -ComputerName $computerNames -ScriptBlock {
    Get-Service dnscache
}
