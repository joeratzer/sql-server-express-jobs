#variables
$psFileLocationAndName = "-NoProfile -File C:\Scripts\keep-db-awake.ps1"
$taskName = "KeepSqlExpressAwake"

#action and trigger
$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument $psFileLocationAndName
$trigger = New-ScheduledTaskTrigger -Once -At 7am -RepetitionDuration  (New-TimeSpan -Days (365*20))  -RepetitionInterval  (New-TimeSpan -Minutes 3)	

#create scheduled task
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName $taskName -Description "Process to prevent SQL Express sleeping"
