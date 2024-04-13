Set-Content item.json -Value @'
{
    "$schema": "http://json-schema.org/draft-07/schema#",
    "$id": "item",
    "type": "object",
    "properties": {
        "name": { "type": "string" }
    },
    "required": [ "name" ],
    "additionalProperties": false
}
'@
