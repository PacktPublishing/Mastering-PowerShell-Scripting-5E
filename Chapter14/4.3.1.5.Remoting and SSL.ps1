Get-ChildItem WSMan:\localhost\Listener | ForEach-Object { 
    $listener = [Ordered]@{
        Name = $_.Name
    }
    Get-ChildItem $_.PSPath | ForEach-Object { 
        $listener[$_.Name] = $_.Value 
    } 
    [PSCustomObject]$listener 
} | Where-Object Transport -eq 'HTTPS' 

# Expects output:
# 
# Invoke-Command -ScriptBlock { Get-Process } -ComputerName $env:COMPUTERNAME -UseSSL
