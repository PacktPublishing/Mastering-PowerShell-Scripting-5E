using namespace System.Management

([wmisearcher]'SELECT * FROM Win32_LogonSession').Get() | ForEach-Object {
    [PSCustomObject]@{
        LogonName      = $_.GetRelated('Win32_Account').Caption
        SessionStarted = [ManagementDateTimeConverter]::ToDateTime(
            $_.StartTime
        )
    }
}
