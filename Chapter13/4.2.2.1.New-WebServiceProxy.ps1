﻿$params = @{
    Uri = 'http://localhost:62369/Service.asmx'
}
$service = New-WebServiceProxy @params
$service.GetType().Namespace

# Expects output:
# 
# Microsoft.PowerShell.Commands.NewWebserviceProxy.AutogeneratedTypes.WebServiceProxy4__localhost_62369_Service_asmx
