$directory = Get-Item c:\windows
$files = $directory.EnumerateFiles(
    '*',
    [System.IO.EnumerationOptions]@{
        RecurseSubdirectories = $true
    }
) | Write-Output
