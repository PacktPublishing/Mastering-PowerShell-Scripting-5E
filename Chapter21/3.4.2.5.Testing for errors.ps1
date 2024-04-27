Describe Division {
    It 'Throws an error when 1 is divided by 0' {
        { 1/0 } | Should -Throw -ExpectedMessage 'Attempted to divide by zero.'
    }
}
