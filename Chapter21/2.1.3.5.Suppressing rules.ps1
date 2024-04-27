Invoke-ScriptAnalyzer -ScriptDefinition $script |
    Format-List Message, RuleName, RuleSuppressionID

# Expects output:
# 
# Message           : The parameter 'Message' has been declared but not used.
# RuleName          : PSReviewUnusedParameter
# RuleSuppressionID : Message
# 
# Message           : The parameter 'PassThru' has been declared but not used.
# RuleName          : PSReviewUnusedParameter
# RuleSuppressionID : PassThru
