Start-Process notepad -Verbose -PassThru | Stop-Process -Verbose

# Expects output:
# 
# VERBOSE: Performing the operation "Stop-Process" on target "notepad (5592)". 
