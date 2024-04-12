$string = '20170102-2030' 
[DateTime]::ParseExact(
    $string,
    'yyyyddMM-HHmm',
    (Get-Culture)
) 

# Expects output:
# 
# 01 February 2017 20:30:00
