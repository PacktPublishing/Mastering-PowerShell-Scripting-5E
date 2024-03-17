$path = Get-Item Project
$queue = [System.Collections.Generic.Queue[object]]$path
$output = while ($queue.Count) {
    $current = $queue.Dequeue()	
    $current
    foreach ($child in Get-ChildItem -Path $current -Directory) {
        $queue.Enqueue($child)
    }
}
$output.Name

# Expects output:
# 
# Project
# A
# D
# B
# Large
# C
# Large
# Tree
# Tree
