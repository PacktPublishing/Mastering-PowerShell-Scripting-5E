$rightLookup = [System.Collections.Generic.HashSet[string]]::new(
    [string[]]$right.UserID,
    [StringComparer]::OrdinalIgnoreCase
)
$left | Where-Object { $rightLookup.Contains($_.UserID) }
