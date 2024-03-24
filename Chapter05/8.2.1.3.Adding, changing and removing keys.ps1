$hashtable = @{} 
$hashtable.Add(“Key1”, “Value1”) 
$hashtable

# Expects output:
# 
# $hashtable = @{ Existing = "Value0" }
# $hashtable.Add("Existing", "Value1")
