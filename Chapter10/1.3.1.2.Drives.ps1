$params = @{
    Name = 'HKCR'
    PSProvider = 'Registry'
    Root       = 'HKEY_CLASSES_ROOT'
}
New-PSDrive @params 
