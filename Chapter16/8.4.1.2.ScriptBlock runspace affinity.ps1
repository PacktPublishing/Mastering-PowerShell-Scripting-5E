$ui.Controls['Button'].add_Click({
    $ui.PSHost.Commands.Clear()

    $ui.PSHost.AddScript({
        $ui.Controls['Dispatcher'].Invoke({
            $ui.Controls['Status'].Content = 'Running'
            $ui.Controls['Button'].IsEnabled = $false
        }.Ast.GetScriptBlock())
    }).AddStatement()

    $ui.PSHost.AddScript($script).AddStatement()

    $ui.PSHost.AddScript({
        $ui.Controls['Dispatcher'].Invoke({
            $ui.Controls['Status'].Content = 'Complete'
            $ui.Controls['Button'].IsEnabled = $true
        }.Ast.GetScriptBlock())
    })
    $ui.PSHost.BeginInvoke()
})
