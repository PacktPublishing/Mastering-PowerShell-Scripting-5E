function Test-HelpMessage {
    param (
        [Parameter(
            Mandatory,
            HelpMessage = 'Help text for Parameter'
        )]
        $Parameter
    )
}
