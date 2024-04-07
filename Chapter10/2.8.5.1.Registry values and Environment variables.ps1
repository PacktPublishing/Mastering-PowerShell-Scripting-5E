$params = @{
    Path = 'HKCU:\Environment'
    Name = 'TestValue'
    Value = '%USERPROFILE%\TestValue'
    Type = 'ExpandString'
}
New-ItemProperty @params
