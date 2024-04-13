Invoke-WebRequest https://expired.badssl.com/ -SkipCertificateCheck

# Expects output:
# 
# StatusCode        : 200
# StatusDescription : OK
# Content           : <!DOCTYPE html>
#                     <html>
#                     <head>
#                       <meta charset="utf-8">
#                       <meta name="viewport" content="width=device-width, initial-scale=1">
#                       <link rel="shortcut icon" href="/icons/favicon-red.ico"/>
#                       <link rel="a…
# RawContent        : HTTP/1.1 200 OK
