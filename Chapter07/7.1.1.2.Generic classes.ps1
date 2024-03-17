$listOfObjects = [System.Collections.ArrayList]::new()
# Box the string value
$listOfObjects.Add('hello world') 
# Unbox the string value
$value = $listOfObjects[0]
