$ui = Import-Xaml $xaml
$ui.Controls['Button'].add_Click({
    $ui.PSHost.Commands.Clear()
    $ui.PSHost.AddScript($script)
    $ui.PSHost.BeginInvoke()
})
