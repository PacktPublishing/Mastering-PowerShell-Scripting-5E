$ui = Import-Xaml $xaml
$ui.Controls['Button'].add_Click({
    $ui.PSHost.Commands.Clear()

    $ui.PSHost.AddScript({
        $ui.Controls['Dispatcher'].Invoke({
            $ui.Controls['Button'].IsEnabled = $false
        }.Ast.GetScriptBlock())
    }).AddStatement()

    $ui.PSHost.AddScript({
        $start, $end = $ui.Controls['Dispatcher'].Invoke([Func[object]]{
            $ui.Controls['TextBoxStart'].Text -as [int]
            $ui.Controls['TextBoxEnd'].Text -as [int]
        }.Ast.GetScriptBlock())
    }).AddStatement()

    $ui.PSHost.AddScript($script).AddStatement()

    $ui.PSHost.AddScript({
        $ui.Controls['Dispatcher'].Invoke({
            $ui.Controls['Button'].IsEnabled = $true
        }.Ast.GetScriptBlock())
    })

    $ui.PSHost.BeginInvoke()
})
$ui.MainWindow.ShowDialog()
