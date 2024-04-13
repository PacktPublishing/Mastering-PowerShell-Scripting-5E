$service.SearchElements($searchConditions)

# Expects output:
# 
# Cannot convert argument "searchConditions", with value: "System.Object[]", for "SearchElements" to type
# "SOAP.SearchCondition[]": "Cannot convert the "SOAP.SearchCondition" value of type "SOAP.SearchCondition" to type
# "SOAP.SearchCondition"."
# At line:1 char:1
# + $service.SearchElements($searchConditions)
# + ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#  + CategoryInfo : NotSpecified: (:) [], MethodException
#  + FullyQualifiedErrorId : MethodArgumentConversionInvalidCastArgument
