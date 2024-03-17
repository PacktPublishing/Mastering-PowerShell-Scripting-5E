$hashtable = @{ 
    Key1 = 'Value1' 
    Key2 = 'Value2'
}
if (-not $hashtable.Contains('Key3')) {
    $hashtable.Key3 = 'Value3'
}
