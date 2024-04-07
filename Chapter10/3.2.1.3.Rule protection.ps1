Get-Acl C:\Temp\ACL\2 |
    Select-Object -ExpandProperty Access | 
    Select-Object FileSystemRights, IsInherited, IdentityReference

# Expects output:
# 
#            FileSystemRights IsInherited IdentityReference
#            ---------------- ----------- -----------------
#                  -536805376       False NT AUTHORITY\Authentica…
#         Modify, Synchronize       False NT AUTHORITY\Authentica…
#                 FullControl       False NT AUTHORITY\SYSTEM
#                 FullControl       False BUILTIN\Administrators
# ReadAndExecute, Synchronize       False BUILTIN\Users
#                 FullControl        True BUILTIN\Administrators
#                 FullControl        True NT AUTHORITY\SYSTEM
# ReadAndExecute, Synchronize        True BUILTIN\Users
#         Modify, Synchronize        True NT AUTHORITY\Authentica…
#                  -536805376        True NT AUTHORITY\Authentica…
