#variables
$backupTimeOfDay = "1AM"
$psFileLocationAndName = "-NoProfile -File C:\Scripts\backup-db.ps1"
$taskName = "BackupSqlExpress"

#action and trigger
$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument $psFileLocationAndName
$trigger = New-ScheduledTaskTrigger -Daily -At $backupTimeOfDay

#create scheduled task
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName $taskName -Description "Daily backup of SQL databases"