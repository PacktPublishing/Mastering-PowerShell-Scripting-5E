function Get-CimNamespace { 
    param ( 
        $Namespace = 'root' 
    ) 
       
    $children = Get-CimInstance __Namespace -Namespace $Namespace
    foreach ($child in $children) { 
        $childNamespace = Join-Path $Namespace -ChildPath $child.Name 
        $childNamespace
 
        Get-CimNamespace -Namespace $childNamespace
    }
} 
Get-CimNamespace 
