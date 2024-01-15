# New_PC_Setup
Setup scripts for joining new PCs to my test lab (testdomain.local). 

Run in the following order:
1. 1_RunFirst.bat
2. NamePC.ps1
3. JoinDomain.ps1
4. MovePC.ps1

RunFirst.bat - Creates a registry key that will give the option to "Run As Administrator" on PowerShell scripts. Execution Policy is not changed. 
NamePC.ps1 - Renames PC.
JoinDomain.ps1 - Joins PC to testdomain.local. Modify as needed to join your own domain.
MovePC.ps1 - Moves new computer from the Computers OU to either the Accounting, Engineering, Sales, or IT OU. Modify as needed for your domain. 
