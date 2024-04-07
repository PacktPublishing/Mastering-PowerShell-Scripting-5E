$params = @{
    Path = '~\Documents\WindowsPowerShell'
    ItemType = 'Junction'
    Value = '~\Documents\PowerShell'
}
New-Item @params
