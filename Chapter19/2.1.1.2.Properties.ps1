[MyClass]::new() | Get-Member get_*, set_* -Force

# Expects output:
# 
#    TypeName: MyClass
# 
# Name         MemberType    Definition
# ----         ----------    ----------
# get_Value    Method        string get_Value()
# set_Value    Method        void set_Value(string )
