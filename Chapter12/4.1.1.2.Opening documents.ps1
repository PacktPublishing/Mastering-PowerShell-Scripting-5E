$xDocument = [System.Xml.Linq.XDocument]::Load("$pwd\cars.xml")
$xDocument.ToString()

# Expects output:
# 
# <cars>
#   <car type="Saloon">
#     <colour>Green</colour>
#     <doors>4</doors>
#     <transmission>Automatic</transmission>
#     <engine>
#       <size>2.0</size>
#       <cylinders>4</cylinders>
#     </engine>
#   </car>
# </cars>
