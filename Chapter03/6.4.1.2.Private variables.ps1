function first {
    $name = 'first'
    second
}
function second {
    $private:name = 'second'
    third
}
function third {
    "In the function third the value of name is $name"
}
