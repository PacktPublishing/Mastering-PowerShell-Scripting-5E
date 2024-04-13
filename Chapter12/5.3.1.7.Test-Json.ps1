$json = '{"items": [ { "name": "first" }, { "name": "second" } ] }'
Test-Json -Json $json -SchemaFile .\items.json

# Expects output:
# 
# True
