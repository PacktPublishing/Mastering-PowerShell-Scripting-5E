function Outer {
    param (
        $Parameter1
    )
    function Inner1 {
    }
    function Inner2 {
        function Inner3 {
        }
    }
    Write-Host 'Hello world'
}
