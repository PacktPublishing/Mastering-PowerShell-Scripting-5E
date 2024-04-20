@(
    Get-Date '01/01/2019'
    Get-Date '01/01/2020'
) | ForEach-Object ToString('yyyyMMdd')
