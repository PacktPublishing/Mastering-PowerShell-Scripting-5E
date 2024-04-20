$initialSessionState.Commands | 
    Where-Object Name -eq 'Write-Greeting'

# Expects output:
# 
# Definition  : Write-Host "Hello world"
# Options     : None
# HelpFile    :
# CommandType : Function
# Visibility  : Public
# Name        : Write-Greeting
# PSSnapIn    :
# Module      :
