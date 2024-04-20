$value = 'one', 'two', 'three'
If (-not ($value -like 't*')) {
    'two and three not found'
}
