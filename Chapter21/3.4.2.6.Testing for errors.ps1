Describe ErrorID {
    It 'Raises an error with a fully-qualified error ID' {
        { Write-Error error -ErrorID SomeErrorID -ErrorAction Stop } |
            Should -Throw -ErrorId SomeErrorID
    }
}
