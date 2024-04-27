using namespace System.Management.Automation.Language

# Find the root module
$rootModulePath = @{
    Path      = $pwd
    ChildPath = 'build\*\*\*.psm1'
}
$rootModule = Join-Path @rootModulePath | Resolve-Path

$ast = [Parser]::ParseFile(
    $rootModule,
    [ref]$null,
    [ref]$null
)
$dscResourcesToExport = $ast.FindAll({
    param ( $node )
    $node -is [TypeDefinitionAst] -and
    $node.IsClass -and
    $node.Attributes.TypeName.FullName -contains 'DscResource'
}, $true).Name
