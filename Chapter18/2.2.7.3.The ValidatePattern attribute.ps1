[ValidatePattern]::new('a') | Get-Member -MemberType Property

# Expects output:
# 
#    TypeName: System.Management.Automation.ValidatePatternAttribute
# 
# Name         MemberType Definition
# ----         ---------- ----------
# ErrorMessage Property   string ErrorMessage {get;set;}
# Options      Property   System.Text.RegularExpressions.RegexOptions Options {get;set;}
# RegexPattern Property   string RegexPattern {get;}
# TypeId       Property   System.Object TypeId {get;}
