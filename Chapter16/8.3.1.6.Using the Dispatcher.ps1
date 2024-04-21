$ui = Import-Xaml $xaml
$ui.Controls['Button'].add_Click({
    $ui.PSHost.Commands.Clear()

    # Disable the button
    $ui.PSHost.AddScript({
        $ui.Controls['Dispatcher'].Invoke({
            $ui.Controls['Status'].Content = 'Running'
            $ui.Controls['Button']. IsEnabled = $false
        })
    }).AddStatement()

    $ui.PSHost.AddScript($script).AddStatement()

    # Enable the button
    $ui.PSHost.AddScript({
        $ui.Controls['Dispatcher'].Invoke({
            $ui.Controls['Status'].Content = 'Complete'
            $ui.Controls['Button'].IsEnabled = $true
        })
    })
    $ui.PSHost.BeginInvoke()
})
