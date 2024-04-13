$xml.Save("$pwd\remove.xml")
Get-Content remove.xml

# Expects output:
# 
# <?xml version="1.0"?>
# <list>
#   <name>1</name>
#   <name>2</name>
# </list>
