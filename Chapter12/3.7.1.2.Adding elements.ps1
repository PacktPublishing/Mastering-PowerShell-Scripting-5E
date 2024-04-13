$xml.Save("$pwd\newelement.xml")
Get-Content newelement.xml

# Expects output:
# 
# <?xml version="1.0"?>
# <list type="numbers">
#   <name>1</name>
#   <name>2</name>
# </list>
