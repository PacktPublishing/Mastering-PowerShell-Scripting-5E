Set-StrictMode -Version Latest
if ($object.ValueB) {
    Write-Host "ValueB is set"
}

# Expects output:
# 
# PropertyNotFoundException:
# Line |
#    2 |  if ($object.ValueB) {
#      |      ~~~~~~~~~~~~~~
#      | The property 'ValueB' cannot be found on this object. Verify that the property exists.
