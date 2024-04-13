$json = '{ "items": { "name": "first" } }'
Test-Json -Json $json -SchemaFile .\items.json

# Expects output:
# 
# True
