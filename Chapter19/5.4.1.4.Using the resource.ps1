$params = @{
    Name = 'ComputerDescription'
    ModuleName = 'LocalMachine'
    Method      = 'Get'
    Property = @{
        Ensure = 'Present'
       Description = 'New description'
    }     
}
Invoke-DscResource @params

# Expects output:
# 
# ConfigurationName    :
# DependsOn            :
# ModuleName           : LocalMachine
# ModuleVersion        : 1.0.0
# PsDscRunAsCredential :
# ResourceId           :
# SourceInfo           :
# Description          : New description
# Ensure               : Absent
# PSComputerName       : localhost
