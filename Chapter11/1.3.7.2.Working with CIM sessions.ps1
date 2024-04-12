$option = New-CimSessionOption -Protocol DCOM
$cimSession = New-CimSession -ComputerName Remote1 –SessionOption $option
$cimSession

# Expects output:
# 
# Id           : 2
# Name         : CimSession2
# InstanceId   : 62b2cb56-ec84-472c-a992-4bee59ee0618
# ComputerName : Remote1
# Protocol     : DCOM 
