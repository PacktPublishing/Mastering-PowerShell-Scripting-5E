$values = @(
    'C:\Temp'
    'domain.net'
) | ForEach-Object { [Regex]::Escape($_) }
$values -join '|'

# Expects output:
# 
# C:\\Temp|domain\.net
