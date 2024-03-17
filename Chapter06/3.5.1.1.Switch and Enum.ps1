[DayOfWeek]::Monday

# Expects output:
# 
# switch ((Get-Date).DayOfWeek) {
#     [DayOfWeek]::Monday    { 'Monday' }
#     [DayOfWeek]::Tuesday   { 'Tuesday' }
#     [DayOfWeek]::Wednesday { 'Wednesday' }
#     [DayOfWeek]::Thursday  { 'Thursday' }
#     [DayOfWeek]::Friday    { 'Friday' }
#     [DayOfWeek]::Saturday  { 'Saturday' }
#     [DayOfWeek]::Sunday    { 'Sunday' }
#     default { 'It is not a week day at all' }
# }
