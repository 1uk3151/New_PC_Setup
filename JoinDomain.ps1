$date = Get-Date -Format MM-dd-yyyy

Start-Transcript C:\New_PC_Setup\JoinDomain_$date.txt

$credential = Read-Host "Enter Elevated ID: "

Remove-Item C:\Users\Public\Desktop\3_JoinDomain.lnk

Add-Computer -DomainName testdomain.local -Credential TESTDOMAIN\$credential -Force

Stop-Transcript

Restart-Computer



