# New_PC_Setup
Setup scripts for joining new PCs to my test lab (testdomain.local). 

Place New_PC_Setup on the root of C:. So you should have a C:\New_PC_Setup folder that contains the 4 scripts. The PowerShell scripts each write transcripts to this path, so you will get errors without this folder.  

Run in the following order:
1. 1_RunFirst.bat
2. NamePC.ps1
3. JoinDomain.ps1
4. MovePC.ps1

- RunFirst.bat - Creates a registry key that will give the option to "Run As Administrator" on PowerShell scripts. Execution Policy is not changed. 
- NamePC.ps1 - Renames PC.
- JoinDomain.ps1 - Joins PC to testdomain.local. Modify as needed to join your own domain.
- MovePC.ps1 - Moves new computer from the Computers OU to either the Accounting, Engineering, Sales, or IT OU. Modify as needed for your domain. 

OPTIONAL - for easy workflow
- Create a shortcut of NamePC.ps1, JoinDomain.ps1, and MovePC.ps1.
- Name them 2_NamePC, 3_JoinDomain, 4_MovePC. 
- Put a copy of 1_RunFirst.bat, 2_NamePC, 3_JoinDomain, and 4_MovePC on the public desktop. (C:\users\public\desktop)
- As you run each script in order, the shortcut on the desktop will be deleted. 
