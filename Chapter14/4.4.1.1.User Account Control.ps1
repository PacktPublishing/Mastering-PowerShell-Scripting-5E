$params = @{
    Path = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'
    Name = 'LocalAccountTokenFilterPolicy'
}
Get-ItemProperty @params

# Expects output:
# 
# LocalAccountTokenFilterPolicy : 1
# PSPath                        : Microsoft.PowerShell.Core\Registry
#                                 ::HKEY_LOCAL_MACHINE\SOFTWARE\Micr
#                                 osoft\Windows\CurrentVersion\Polic
#                                 ies\System
# PSParentPath                  : Microsoft.PowerShell.Core\Registry
#                                 ::HKEY_LOCAL_MACHINE\SOFTWARE\Micr
#                                 osoft\Windows\CurrentVersion\Polic
#                                 ies
# PSChildName                   : System
# PSDrive                       : HKLM
# PSProvider                    : Microsoft.PowerShell.Core\Registry
