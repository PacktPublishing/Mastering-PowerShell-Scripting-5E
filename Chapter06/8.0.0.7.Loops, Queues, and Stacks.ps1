$path = Get-Item Project
$stack = [System.Collections.Generic.Stack[object]]$path
$output = while ($stack.Count) {
    $current = $stack.Pop()
    $current
    foreach ($child in Get-ChildItem -Path $current -Directory) {
        if ($current.Name -eq 'Large') {
            continue
        }
        $stack.Push($child)
    }
}
$output.Name

# Expects output:
# 
# Project
# D
# Large
# A
# B
# Large
# C
