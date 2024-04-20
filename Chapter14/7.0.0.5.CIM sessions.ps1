$params = @{
    ComputerName = $env:COMPUTERNAME
    SessionOption = New-CimSessionOption -Protocol DCOM
}
New-CimSession @params

# Expects output:
# 
# Id           : 3
# Name         : CimSession3
# InstanceId   : 29bba117-c899-4389-b874-5afe43962a1e
# ComputerName : PSTEST
# Protocol     : DCOM
