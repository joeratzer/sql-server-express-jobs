#variables
$server = ".\sqlexpress"
$database = "DATABASE_NAME"
$backupDestination = "C:\Backups\"

#setup
$timestamp = Get-Date -format yyyy_MM_dd_HHmmss;
$backupDestination = $backupDestination + "\" + $database + "_full_" + $timestamp + ".bak", "File";
$backupSetName = "Full backup of " + $database + " " + $timestamp;

#backup
Backup-SqlDatabase -ServerInstance $server -Database $database -BackupFile $backupDestination -Initialize -BackupSetName $backupSetName