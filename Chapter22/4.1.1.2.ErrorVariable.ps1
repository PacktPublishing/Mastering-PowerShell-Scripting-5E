$params = @{
    ErrorVariable = 'MyErrorVariable'
    ErrorAction   = 'SilentlyContinue'
}
Invoke-Something @params
