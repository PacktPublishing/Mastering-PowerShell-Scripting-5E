Get-Process -Id $pid |
    Select-Object Name, WorkingSet |
    ConvertTo-Xml -As String

# Expects output:
#
# <?xml version="1.0" encoding="utf-8"?>
# <Objects>
#     <Object Type="System.Management.Automation.PSCustomObject">
#         <Property Name="Name" Type="System.String">pwsh</Property>
#         <Property Name="WorkingSet" Type="System.Int32">190771200</Property>
#     </Object>
# </Objects>
