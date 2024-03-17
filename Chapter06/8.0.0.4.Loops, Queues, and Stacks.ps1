$path = Get-Item Project
$queue = [System.Collections.Generic.Queue[object]]$path
while ($queue.Count) {
    $current = $queue.Dequeue()
    Write-Host "Taking $current from the queue"
    foreach ($child in Get-ChildItem -Path $current -Directory) {
        Write-Host "Adding $child to the queue"
        $queue.Enqueue($child)
    }
}
