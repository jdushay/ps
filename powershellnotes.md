<h1> These are my powershell notes </h1>

This is my first attempt at writing some notes in Markdown. I though it would be good to have a place to share the powershell notes and commands I frequently refer back to.<br>

<h3>Add a value to a custom attribute in Active Directory<h3>
<h4>Replace $extensionAttribute1 with the correct attribute, and syntax with value you want to add

```Set-ADUser <username> -replace @{extensionAttribute1="Syntax"```

<H3> List out names of AD Group Membership </h3>
<h4>Note that you may want to adjust name for sAMAccountName,EmailAddress, or mail. EmailAddress is a representation of the LDAP mail attribute.</h4> 

```Get-ADGroupMember -identity “HR Full” | select name```

<h3>Add the export csv module to your command, otherwise information contains no formatting. Include the `|` pipe symbol and ensure the file path actually exists</h3>

```| Export-Csv -path c:\scripts\[addfilename]```

<h3> Get a list of all services running, change Running to "stopped", if required. Note the only two applicable statuses are Running, or Stopped.

```Get-Service | Where-Object {$_.Status -eq "Running"}```