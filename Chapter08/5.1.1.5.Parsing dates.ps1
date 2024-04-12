$strings = 'The 3rd of May, 2017', 'The 25th of December, 2023' 
$formats = [string[]]@(
    '"The" d"th of" MMMM, yyyy'
    '"The" d"rd of" MMMM, yyyy'
    '"The" d"st of" MMMM, yyyy'
)
foreach ($string in $strings) { 
    [DateTime]::ParseExact(
        $string,
        $formats,
        (Get-Culture),
        'None'
    ) 
} 

# Expects output:
# 
# 03 May 2017 00:00:00
# 25 December 2023 00:00:00
