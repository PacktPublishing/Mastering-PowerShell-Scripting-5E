function Test-ValueFromPipeline {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline)]
        [int]
        $Parameter1,

        [Parameter(ValueFromPipeline)]
        [int]
        $Parameter2
    )
    process {
        'Parameter1: {0}:: Parameter2: {1}' -f @(
            $Parameter1
            $Parameter2
        )
    }
}
