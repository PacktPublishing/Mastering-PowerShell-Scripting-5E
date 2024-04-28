function caller { 
    [IPAddress]::Parse('this is not an IP') 
    second 
} 
function second { 
    'second' 
} 
caller 
