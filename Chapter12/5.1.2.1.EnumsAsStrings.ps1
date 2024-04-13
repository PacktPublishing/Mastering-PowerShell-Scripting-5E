@{ Today = (Get-Date).DayOfWeek } | ConvertTo-Json

# Expects output:
# 
# {
#   "Today": 0
# }
