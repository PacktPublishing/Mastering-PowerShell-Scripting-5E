Invoke-Command -ComputerName FS01 -ScriptBlock {
    $adUser = Get-ADUser -Identity username 
}
