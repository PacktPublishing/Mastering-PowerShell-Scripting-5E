$tableFormat | ForEach-Object {
    $viewName = $_.Name
    $viewType = $_.Control.GetType().Name

    $index = 0
    $columns = $_.Control.Rows.Columns

    $_.Control.Headers | ForEach-Object {
        [PSCustomObject]@{
            ViewName = $viewName
            ViewType = $viewType
            Label    = $_.Label
            Entry    = $columns[$index].DisplayEntry
        }
        $index++
    }
}

# Expects output:
# 
# ViewName ViewType     Label  Entry
# -------- --------     -----  -----
# process  TableControl NPM(K) script: [long]($_.NPM / 1024)
# process  TableControl PM(M)  script: "{0:N2}" -f [float]($_.PM / 1MB)
# process  TableControl WS(M)  script: "{0:N2}" -f [float]($_.WS / 1MB)
# process  TableControl CPU(s) script: "{0:N2}" -f [float]($_.CPU)
# process  TableControl        property: Id
# process  TableControl        property: SI
# process  TableControl        property: ProcessName
