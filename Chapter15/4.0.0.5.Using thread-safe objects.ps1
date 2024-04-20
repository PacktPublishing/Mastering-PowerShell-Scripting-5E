using namespace System.Collections.Concurrent

$stack = [ConcurrentStack[int]]@(90, 1, 8, 6, 29)

1..5 | ForEach-Object -Parallel {
    Start-Sleep -Milliseconds (
        Get-Random -Minimum 0 -Maximum 500
    )
    $value = 0
    if (($using:stack).TryPop([ref]$value)) {
        ‘Iteration {0}, value {1}’ -f $_, $value
    }
}

# Expects output:
# 
# Iteration 2, value 29
# Iteration 5, value 6
# Iteration 3, value 8
# Iteration 4, value 90
# Iteration 1, value 1     
