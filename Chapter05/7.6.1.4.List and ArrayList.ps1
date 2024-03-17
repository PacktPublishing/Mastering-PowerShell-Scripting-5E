$stringList.AddRange($array)

# Expects output:
# 
# MethodException: Cannot convert argument "collection", with value: "System.Object[]", for "AddRange" to type "System.Collections.Generic.IEnumerable`1[System.String]": "Cannot convert the "System.Object[]" value of type "System.Object[]" to type "System.Collections.Generic.IEnumerable`1[System.String]"."
