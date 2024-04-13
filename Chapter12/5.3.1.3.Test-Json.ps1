$json = '{ "name": "first", "position": 1 }'
Test-Json -Json $json -SchemaFile item.json

# Expects output:
# 
# Test-Json: The JSON is not valid with the schema: All values fail against the false schema at '/position'
# False
