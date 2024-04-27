It 'Opens an SQL connection' {
    Open-SqlConnection -SqlConnection $connection

    $connection._Open | Should -HaveCount 1
}
