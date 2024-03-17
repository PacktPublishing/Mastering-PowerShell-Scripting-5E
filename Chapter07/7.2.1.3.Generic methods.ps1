[System.Management.Automation.LanguagePrimitives]::ConvertTo

# Expects output:
# 
# OverloadDefinitions
# -------------------
# public static object ConvertTo(object valueToConvert, Type resultType);
# public static object ConvertTo(object valueToConvert, Type resultType, IFormatProvider formatProvider);
# public static T ConvertTo<T>(object valueToConvert);
