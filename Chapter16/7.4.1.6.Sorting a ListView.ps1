$listView = $ui.Controls['ListView']
$dataView = [System.Windows.Data.CollectionViewSource]::GetDefaultView(
    $listView.ItemsSource
)
