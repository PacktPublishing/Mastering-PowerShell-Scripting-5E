function Send-Message {
    [Diagnostics.CodeAnalysis.SuppressMessage(
        'PSReviewUnusedParameter',
        'Message',
        Justification = 'Accepted, but not used'
    )] 
    [CmdletBinding()]
    param (
        $Message,

        $PassThru
    )
}
