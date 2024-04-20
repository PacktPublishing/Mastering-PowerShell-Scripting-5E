$params = @{
    ComputerName = 'localhost'
    ScriptBlock  = {
        Get-PSDrive -Name $using:Name | ForEach-Object {
            [PSCustomObject]@{
                Name      = $_.Name
                FreeSpace = [Math]::Round(
                    $_.Free / "1$using:Units",
                    2
                )
            }
        }
    }
}

$Name = 'C'
$Units = 'GB'

Invoke-Command @params
