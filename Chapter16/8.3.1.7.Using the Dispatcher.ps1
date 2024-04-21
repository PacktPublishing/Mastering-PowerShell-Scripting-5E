$script = {
    function Start-SlowCommand {
        Start-Sleep -Seconds 10
        'Hello world'
    }
    $output = Start-SlowCommand

    $ui.Controls['Dispatcher'].Invoke({
        $ui.Controls['Output'].Content = $output
    })
}
