$ui.Controls['Button'].add_Click({
    param ( $sender, $eventArgs )

    $data = Get-Process | Select-Object Name, ID
    $listView = $ui.Controls['ListView']

    # Clear any previous content
    $listView.View.Columns.Clear()
    foreach ($property in $data[0].PSObject.Properties) {
        $header = [System.Windows.Controls.GridViewColumnHeader]@{
            Name    = $property.Name
            Content = $property.Name
        }
        $header.add_Click($headerClickHandler)

        $column = [System.Windows.Controls.GridViewColumn]@{
            DisplayMemberBinding = ( 
                [System.Windows.Data.Binding]$property.Name
            )
            Header               = $header
        }
        $listView.View.Columns.Add($column)
    }
    $listView.ItemsSource = $data
})
$ui.MainWindow.ShowDialog()
