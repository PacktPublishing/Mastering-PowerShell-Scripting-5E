Set-Content items.json -Value @'
{
    "$schema": "http://json-schema.org/draft-07/schema#",
    "$id": "items”,
    “type”: “object”,
    “properties”: {
        “items”: {
            “anyOf”: [
                { “$ref”: “item.json” },
                {
                    “type”: “array”,
                    “minItems”: 1,
                    “items”: {
                        “$ref”: “item.json”
                    }
                }
            ]
        }
    },
    “required”: [ “items” ]
}
'@
