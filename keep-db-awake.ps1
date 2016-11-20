#variables
$server = ".\sqlexpress"
$database = "DATABASE_NAME"
$databaseSpecificQuery = "select top 1 * from dbo.TABLE_NAME with(nolock)"

#sql command
Invoke-Sqlcmd -Query $databaseSpecificQuery -ServerInstance $server -Database $database