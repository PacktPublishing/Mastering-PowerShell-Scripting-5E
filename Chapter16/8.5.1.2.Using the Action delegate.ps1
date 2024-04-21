$ui.PSHost.AddScript({
    $content = 'Running'
    $enabled = $false

    $ui.Controls['Dispatcher'].Invoke(
        [Action[string,bool]]{
            param ( $content, $enabled )

            $ui.Controls['Status'].Content = $content
            $ui.Controls['Button'].IsEnabled = $enabled
        }.Ast.GetScriptBlock(),
        @($content, $enabled)
    )
}).AddStatement()
