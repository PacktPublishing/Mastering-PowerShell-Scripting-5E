$definition = {
    param ( $Name, $Units )
    Get-PSDrive -Name $Name | ForEach-Object {
        [PSCustomObject]@{
            Name      = $_.Name
            FreeSpace = [Math]::Round($_.Free / "1$Units", 2) 
        }
    }
}

$params = @{
    ComputerName = 'localhost'
    ArgumentList = @(
        $definition
        @{
            Name  = 'C'
            Units = 'GB'
        }
    )
    ScriptBlock  = {
        param ($definition, $arguments)

        & ([ScriptBlock]::Create($definition)) @arguments
    }
}
Invoke-Command @params
