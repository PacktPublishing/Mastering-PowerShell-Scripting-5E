function Set-SortDirection {
    param (
        [string]
        $SortBy,

        [System.ComponentModel.ListSortDirection]
        $Direction
    )

    $listView = $ui.Controls['ListView']
    $dataView = [System.Windows.Data.CollectionViewSource]::GetDefaultView(
        $listView.ItemsSource
    )

    $dataView.SortDescriptions.Clear()

    $sortDescription = [System.ComponentModel.SortDescription]::new(
        $SortBy,
        $Direction
    )
    $dataView.SortDescriptions.Add($sortDescription)
    $dataView.Refresh()
}
