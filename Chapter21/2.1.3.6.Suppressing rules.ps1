function Send-Message {
    [Diagnostics.CodeAnalysis.SuppressMessage(
        'PSReviewUnusedParameter',
        'Message'
    )] 
    [CmdletBinding()]
    param (
        $Message,

        $PassThru
    )
}
