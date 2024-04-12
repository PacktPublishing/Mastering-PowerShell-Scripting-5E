Get-WinEvent -MaxEvents 10 -FilterHashtable @{
    LogName   = 'System'
    StartTime = (Get-Date).Date.AddDays(-1)
    EndTime   = (Get-Date).Date
}

# Expects output:
# 
#    ProviderName: Microsoft-Windows-WLAN-AutoConfig
# 
# TimeCreated                     Id LevelDisplayName Message
# -----------                     -- ---------------- -------
# 11/04/2024 20:48:58           4001 Information      WLAN...
