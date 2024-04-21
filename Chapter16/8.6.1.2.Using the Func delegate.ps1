$script = {
    function Start-SlowCommand {
        process {
            Start-Sleep -Seconds 1
            $_
        }
    }

    $start..$end | Start-SlowCommand | ForEach-Object {
        $ui.Controls['Dispatcher'].Invoke(
            [Action[int]]{
                param ($number)
                    
                $ui.Controls['Label'].Content = $number
            }.Ast.GetScriptBlock(),
            $_
        )
    }
}
