using namespace System.Management

$date = [ManagementDateTimeConverter]::ToDmtfTime(
    (Get-Date).AddDays(-90)
)
