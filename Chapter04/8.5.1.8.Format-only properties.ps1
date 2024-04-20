$module = Get-Module | Select-Object -First 1
Get-FormatData -TypeName $module.PSTypeNames |
    ForEach-Object FormatViewDefinition |
    Where-Object {
        $_.Control.GetType().Name -eq 'ListControl'
    } |
    ForEach-Object {
        $viewName = $_.Name
        $viewType = $_.Control.GetType().Name

        $_.Control.Entries.Items | Select-Object -Property @(
            @{ Name = 'ViewName'; Expression = { $viewName }}
            @{ Name = 'ViewType'; Expression = { $viewType }}
            'Label'
            @{ Name = 'Entry'; Expression = 'DisplayEntry' }
        )
    }
