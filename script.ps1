# take input from the command line for processor, environment, and runid
# $processor = $args[0]
# $environment = $args[1]
# $runid = $args[2]
# $date = Get-Date -Format "yyyyMMdd"
# $time = Get-Date -Format "HHmmss"
# $output = "c:\temp\output.csv"
# $query = "select * from sys.databases"
# 
# # Execute the query
# sql-query.ps1 -server $processor -database master -query $query -output $output
# 
# # Rename the output file
# Rename-Item -Path $output -NewName $processor"_"$environment"_"$runid"_"$date"_"$time".csv"
# 
# # Move the output file to the correct location
# Move-Item -Path $processor"_"$environment"_"$runid"_"$date"_"$time".csv" -Destination \\server\share
# 
# # Delete the output file
# Remove-Item -Path \\server\share\$processor"_"$environment"_"$runid"_"$date"_"$time".csv"
# 
# # Delete the script
# Remove-Item -Path script.ps1
# 
# # Delete the batch file
# Remove-Item -Path script.bat
# 
# # Delete the sql-query.ps1 file
# Remove-Item -Path sql-query.ps1
# 
# # Delete the sql-query.bat file
# Remove-Item -Path sql-query.bat
# 
# # Delete the sql-query.exe file
# Remove-Item -Path sql-query.exe
# 
# # Delete the sql-query.cs file
# Remove-Item -Path sql-query.cs
# 
# # Delete the sql-query.exe.config file
# Remove-Item -Path sql-query.exe.config
# 
# # Delete the sql-query.exe.manifest file
# Remove-Item -Path sql-query.exe.manifest
# 
# # Delete the sql-query.pdb file
# Remove-Item -Path sql-query.pdb
# 
# # Delete the sql-query.vshost.exe file
# Remove-Item -Path sql-query.vshost.exe
# 
# # Delete the sql-query.vshost.exe.config file
# Remove-Item -Path sql-query.vshost.exe.config
# 
# # Delete the sql-query.vshost