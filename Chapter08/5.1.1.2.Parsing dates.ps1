$strings = '20170102-2030', '20170103-0931.24' 
[string[]]$formats = 'yyyyddMM-HHmm', 'yyyyddMM-HHmm.ss' 
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
# 01 February 2017 20:30:00
# 01 March 2017 09:31:24
