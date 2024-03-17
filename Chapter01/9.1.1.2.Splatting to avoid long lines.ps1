$taskAction = New-ScheduledTaskAction `
    -Execute pwsh.exe `
    -Argument 'Write-Host "hello world"'
$taskTrigger = New-ScheduledTaskTrigger `
    -Daily `
    -At '00:00:00'
Register-ScheduledTask `
    -TaskName 'TaskName' `
    -Action $taskAction `
    -Trigger $taskTrigger `
    -RunLevel 'Limited' `
    -Description 'This line is too long to read'

# Expects output:
# 
# $newTaskAction = @{
#     Execute = 'pwsh.exe'
#     Argument = 'Write-Host "hello world"'
# }
# $newTaskTrigger = @{
#     Daily = $true
#     At    = '00:00:00'
# }
# $registerTask = @{
#     TaskName    = 'TaskName'
#     Action      = New-ScheduledTaskAction @newTaskAction
#     Trigger     = New-ScheduledTaskTrigger @newTaskTrigger
#     RunLevel    = 'Limited'
#     Description = 'Splatting is easy to read'
# }
# Register-ScheduledTask @registerTask
