$directory = Get-Item c:\windows
$enumerator = $directory.EnumerateFiles(
    '*',
    [System.IO.EnumerationOptions]@{
        IgnoreInaccessible    = $false
        RecurseSubdirectories = $true
    }
).GetEnumerator()

$files = while ($true) {
    try {
        if (-not $enumerator.MoveNext()) {
            break
        }
        $enumerator.Current
    } catch {
        Write-Warning $_.Exception.GetBaseException().Message
    }
}
