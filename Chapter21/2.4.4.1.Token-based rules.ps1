using namespace Microsoft.Windows.PowerShell.ScriptAnalyzer.Generic
using namespace System.Management.Automation.Language

function PSAvoidEmptyComments {
    [CmdletBinding()]
    param (
        [Token[]]
        $token
    )

    $ruleName = $MyInvocation.MyCommand.Name
    $token | Where-Object {
        $_.Kind -eq 'Comment' -and
        $_.Text.Trim() -eq '#'
    } | ForEach-Object {
        [DiagnosticRecord]@{
            Message  = 'Empty comment.'
            Extent   = $_.Extent
            RuleName = $ruleName
            Severity = 'Information'
        }
    }
}
