Invoke-Command -ComputerName WEB01 -ScriptBlock {
    Get-Content \\FS01\share\somefile.txt
}
