function first {
    $first = $name = 'first'
    Write-Host "first: Name: $name; First: $first"
    second
}
function second {
    $second = $name = 'second'
    Write-Host "second: Name: $name; Second: $second"
    third
}
function third {
    $third = $name = 'third'
    Write-Host "third: Name: $name; Third: $third"
}

# Expects output:
# 
# first
