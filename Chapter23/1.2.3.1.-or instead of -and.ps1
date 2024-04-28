@(
    'Anna'
    'Ben'
    'Chris'
    'David'
) | Where-Object { $_ -notlike 'a*' -or 'b*' }
