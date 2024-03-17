Get-Process | Select-Object -Property * -ExcludeProperty *Memory* 

# Expects output:
# 
# Name                    : Aac3572DramHal_x86
# Id                      : 9904
# PriorityClass           :
# FileVersion             :
# HandleCount             : 195
# WorkingSet              : 10051584
# TotalProcessorTime      :
