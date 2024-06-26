﻿Get-Process | Get-Member -MemberType Event

# Expects output:
# 
#    TypeName: System.Diagnostics.Process
# 
# Name               MemberType Definition
# ----               ---------- ----------
# Disposed           Event      System.EventHandler Disposed(Syst...
# ErrorDataReceived  Event      System.Diagnostics.DataReceivedEv...
# Exited             Event      System.EventHandler Exited(System...
# OutputDataReceived Event      System.Diagnostics.DataReceivedEv...
