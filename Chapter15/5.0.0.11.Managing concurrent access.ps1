# In both consoles
$mutex = [System.Threading.Mutex]::new($true, 'PSMutex')
