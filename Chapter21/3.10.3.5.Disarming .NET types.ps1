BeforeAll {
    $connection = New-MockObject System.Data.SqlClient.SqlConnection -Properties @{
        State = 'Closed'
    } -Methods @{
        Open = { }
    }
}
