net stop "N-compass Maintenance Watchdog"
net stop "N-compass Maintenance"

osql -E -d config -q "EXIT(UPDATE dbo.Package SET [GROUP]='ETL' WHERE [NAME]='Fact Transform - DataPing')"
osql -E -d config -q "EXIT(UPDATE dbo.Package SET [GROUP]='ETL' WHERE [NAME]='Fact Transform - Availability Hourly')"
osql -E -d config -q "EXIT(UPDATE dbo.DataSource SET [IS ETL Pending]='True' WHERE [Status]='Active')"

net start "N-compass Maintenance"
net start "N-compass Maintenance Watchdog"