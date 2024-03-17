[System.Collections.Generic.List[object]]$list =
    foreach ($value in 1..5) {
        [PSCustomObject]@{
            Value = $value
        }
    }
