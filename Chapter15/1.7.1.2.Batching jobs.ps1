using namespace System.Linq

$objects = foreach ($value in 1..1000) {
    [PSCustomObject]@{ Value = $value }
}
$batchSize = 100
$ScriptBlock = {
    # Long job set-up step
    Start-Sleep -Seconds 120
    foreach ($object in $using:batch) {
        # Perform action and create output
        $object
    }
}
$batches = [Enumerable]::Chunk[object]($objects, $batchSize)
foreach ($batch in $batches) {
    Start-Job -ScriptBlock $ScriptBlock
}
