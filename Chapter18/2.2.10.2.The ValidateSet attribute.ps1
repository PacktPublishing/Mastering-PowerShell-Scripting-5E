﻿function Test-ValidateSet {
    [CmdletBinding()]
    param (
        [ValidateSet('One', 'Two', 'Three', IgnoreCase = $false)]
        [string]
        $Parameter
    )
}
