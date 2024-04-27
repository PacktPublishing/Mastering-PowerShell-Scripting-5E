function Test-ValidatePattern {
    [CmdletBinding()]
    param (
        [ValidatePattern(
            '^[A-Z]',
            Options = 'None'
        )]
        [string]
        $Parameter
    )
}

# Expects output:
# 
# Test-ValidatePattern -Parameter 'hello Jim.'
