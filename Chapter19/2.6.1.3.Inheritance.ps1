class MyBaseClass {
    [string] GetValue() { return 'default' }
}

class MyClass : MyBaseClass {
    [int] GetValue() { return 1 }
}
