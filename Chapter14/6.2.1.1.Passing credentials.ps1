$Credential = Get-Credential 
Invoke-Command -ComputerName FS01 -ScriptBlock { 
    Get-ADUser -Filter * -Credential $using:Credential 
} 
