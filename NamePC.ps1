$date = Get-Date -Format MM-dd-yyyy

Start-Transcript C:\New_PC_Setup\NamePC_$date.txt

$NewPCName = Read-Host "Enter PC name: "

Remove-Item -Path C:\Users\Public\Desktop\2_NamePC.lnk

Rename-Computer -NewName $NewPCName -Force

Stop-Transcript

Restart-Computer



