Get-Content object.xml

# Expects output:
# 
# <Objs Version=”1.1.0.1” xmlns=”http://schemas.microsoft.com/powershell/2004/04”>
#   <Obj RefId=”0”>
#     <TN RefId=”0”>
#       <T>System.Management.Automation.PSCustomObject</T>
#       <T>System.Object</T>
#     </TN>
#     <MS>
#       <I32 N=”Number”>1</I32>
#       <Db N=”Decimal”>2.3</Db>
#       <S N=”String”>Hello world</S>
#     </MS>
#   </Obj>
# </Objs>
