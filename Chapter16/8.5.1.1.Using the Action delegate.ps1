$ui.PSHost.AddScript([Action]{
    $ui.Controls['Dispatcher'].Invoke({
        $ui.Controls['Status'].Content = 'Running'
        $ui.Controls['Button'].IsEnabled = $false
    }.Ast.GetScriptBlock())
}).AddStatement()
