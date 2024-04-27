$script = @'
function Send-Message {
    [CmdletBinding()]
    param (
        $Message,

        $PassThru
    )
}
'@

Invoke-ScriptAnalyzer -ScriptDefinition $script
