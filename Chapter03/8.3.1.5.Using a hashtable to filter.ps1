$left | Where-Object { $rightLookup.Contains($_.UserID) }
