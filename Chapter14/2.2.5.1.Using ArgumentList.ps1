$params = @{
    ComputerName = 'localhost'
    ArgumentList = 'C', 'GB'
    ScriptBlock  = {
        param (
            $Name,
            $Units
        )
        Get-PSDrive -Name $Name | ForEach-Object {
            [PSCustomObject]@{
                Name      = $_.Name
                FreeSpace = [Math]::Round($_.Free / "1$Units", 2) 
            }
        }
    }
}
Invoke-Command @params
