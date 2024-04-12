# A valid DateTime object with an obvious date
$date = Get-Date 01/01/1601   
# A string to parse
$string = '20170102-2030'
# Test if parsing was successful
if ([DateTime]::TryParseExact(
    $string,
    'yyyyddMM-HHmm',
    $null,
    'None',
    [ref]$date)
) { 
    $date
}

# Expects output:
#
# 01 February 2017 20:30:00
