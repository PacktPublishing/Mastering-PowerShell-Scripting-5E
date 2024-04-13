$params = @{
    Content = $string
    XPath   = '//car[colour="Green"]/engine'
}
Select-Xml @params | Select-Object -ExpandProperty Node  

# Expects output:
# 
#     Select-Object -ExpandProperty Node  
#  
# size    cylinders 
# ----    --------- 
# 2.0     4 
