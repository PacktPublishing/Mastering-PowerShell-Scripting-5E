$ui.Controls['Button'].add_Click({
    param ( $sender, $eventArgs )
    $ui.MainWindow.Close()
})
$ui.MainWindow.ShowDialog()
