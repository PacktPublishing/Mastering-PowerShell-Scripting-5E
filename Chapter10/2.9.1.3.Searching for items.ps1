$files = $directory.EnumerateFiles(
    '*',
    [System.IO.EnumerationOptions]@{
        IgnoreInaccessible    = $false
        RecurseSubdirectories = $true
    }
) | Write-Output
