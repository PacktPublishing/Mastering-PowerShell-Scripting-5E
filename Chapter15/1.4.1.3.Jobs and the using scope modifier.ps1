﻿$hashtable = @{}
Start-Job { $using:hashtable.Add('newValue', 1) } |
    Receive-Job -Wait

# Expects output:
# 
# ParserError:
# Line |
#    1 |  Start-Job { $using:hashtable.Add('newValue', 1) } |
#      |              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#      | Expression is not allowed in a Using expression.
