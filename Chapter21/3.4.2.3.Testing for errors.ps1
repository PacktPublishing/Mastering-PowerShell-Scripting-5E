Describe Division {
    It 'Throws an error when 1 is divided by 0' {
        { throw } | Should -Throw
    }
}
