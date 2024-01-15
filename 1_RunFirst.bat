# Add ability to run PowerShell scripts as Admin
reg import C:\New_PC_Setup\AddRunAsAdmin.reg

# Ensure AutoLogon is turned off
reg import C:\New_PC_Setup\AutoLogonOFF.reg

# Unblock New_PC_Setup PowerShell scripts
powershell Unblock-File -Path C:\New_PC_Setup\NamePC.ps1 -WarningAction SilentlyContinue
powershell Unblock-File -Path C:\New_PC_Setup\JoinDomain.ps1 -WarningAction SilentlyContinue
powershell Unblock-File -Path C:\New_PC_Setup\MovePC.ps1 -WarningAction SilentlyContinue
powershell Unblock-File -Path C:\Users\Public\Desktop\2_NamePC.lnk -WarningAction SilentlyContinue
powershell Unblock-File -Path C:\Users\Public\Desktop\3_JoinDomain.lnk -WarningAction SilentlyContinue
powershell Unblock-File -Path C:\Users\Public\Desktop\4_MovePC.lnk -WarningAction SilentlyContinue

del C:\Users\Public\Desktop\1_RunFirst.bat