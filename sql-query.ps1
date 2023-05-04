# Connect to sql server and run a query, return the results as a CSV file
# Usage: sql-query.ps1 -server <server> -database <database> -query <query> -output <output file>
# Example: sql-query.ps1 -server localhost -database master -query "select * from sys.databases" -output c:\temp\output.csv
# Define Parameters
param (
    [Parameter(Mandatory=$true)][string]$server,
    [Parameter(Mandatory=$true)][string]$database,
    [Parameter(Mandatory=$true)][string]$query,
    [Parameter(Mandatory=$true)][string]$output
)

# Define Variables
$connectionString = "Server=$server;Database=$database;Integrated Security=SSPI;"
$connection = New-Object System.Data.SqlClient.SqlConnection
$connection.ConnectionString = $connectionString
$command = New-Object System.Data.SqlClient.SqlCommand
$command.Connection = $connection
$command.CommandText = $query
$connection.Open()
$adapter = New-Object System.Data.SqlClient.SqlDataAdapter $command
$dataset = New-Object System.Data.DataSet
$adapter.Fill($dataset) | Out-Null
$dataset.Tables[0] | Export-Csv -Path $output -NoTypeInformation
$connection.Close()

