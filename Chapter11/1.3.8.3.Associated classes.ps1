Get-CimInstance Win32_UserAccount -Filter "Name='$env:USERNAME'" |
    Get-CimAssociatedInstance -ResultClassName Win32_LogonSession |
    Get-CimAssociatedInstance -ResultClassName Win32_Process
