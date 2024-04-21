$script = {
    function Start-SlowCommand {
        Start-Sleep -Seconds 10
        'Hello world'
    }
    Start-SlowCommand
}
