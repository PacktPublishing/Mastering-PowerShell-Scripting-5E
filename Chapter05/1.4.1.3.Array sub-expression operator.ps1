$myArray = @(
    Get-Process | Where-Object ProcessName -in @(
        'pwsh'
        ‘powershell’
    )
    Get-Process notepad 
)
