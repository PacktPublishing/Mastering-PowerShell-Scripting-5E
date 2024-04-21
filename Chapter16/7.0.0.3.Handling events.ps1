$ui.MainWindow.add_KeyDown({
    param ( $sender, $eventArgs )
    if ($eventArgs.Key -eq 'ESC') {
        $sender.Close()
    }
})
