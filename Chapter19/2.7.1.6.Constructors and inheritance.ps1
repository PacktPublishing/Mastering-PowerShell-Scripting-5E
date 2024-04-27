$instance = [ChildClass]::new('value')

# Expects output:
# 
# MethodException:
# Line |
#    2 |      ChildClass([string]$value) {
#      |                                 ~
#      | Cannot find an overload for "new" and the argument count: "0".
