
$xml.SelectNodes( 
    '//any:car[any:colour="Green"]/any:engine', 
    $namespaceManager 
) 

# Expects output:
# 
# size cylinders
# ---- ---------
# 2.0  4
