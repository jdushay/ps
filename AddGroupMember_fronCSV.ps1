# Provide a CSV with a single column, labeled "Username"
$CsvLocation = "C:\Scripts\AD_Users_AddGroupBasedOnCSV\database-finance.csv"
# Fill in which group you would like to add
$GroupToAdd = ""


Import-module ActiveDirectory  
Import-CSV $CsvLocation | % {  
Add-ADGroupMember -Identity $GroupToAdd -Members $_.Username  
} 