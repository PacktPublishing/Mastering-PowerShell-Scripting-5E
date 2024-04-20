Get-Service | Where-Object {
    $_.StartType -eq 'Manual' -and 
    $_.Status -eq 'Running'
}

# Expects output:
# 
# Status   Name               DisplayName
# ------   ----               -----------
# Running  Appinfo            Application Information
# Running  AppXSvc            AppX Deployment Service (AppXSVC)
# Running  BluetoothUserServ… Bluetooth User Support Service_535639
# Running  BTAGService        Bluetooth Audio Gateway Service
