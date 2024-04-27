Set-Content CustomRules.psm1 -Value @'
using namespace Microsoft.Windows.PowerShell.ScriptAnalyzer.Generic
using namespace System.Management.Automation.Language

function PSAvoidEmptyNamedBlocks {
    [CmdletBinding()]
    param (
        [NamedBlockAst]
        $ast
    )

    if ($ast.Statements.Count -eq 0) {
        [DiagnosticRecord]@{
            Message  = 'Empty {0} block.' -f $ast.BlockKind
            Extent   = $ast.Extent
            RuleName = $MyInvocation.MyCommand.Name
            Severity = 'Warning'
        }
    }
}
'@
