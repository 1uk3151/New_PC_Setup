$date = Get-Date -Format MM-dd-yyyy

Start-Transcript C:\New_PC_Setup\MovePC_$date.txt

Remove-Item -Path C:\Users\Public\Desktop\4_MovePC.lnk

# Have user select which department the PC is located
$chosenOU = Read-Host "Select department:

1 = Accounting
2 = Engineering
3 = Sales
4 = IT

Enter 1-4 to select department: "


if ($chosenOU -notin 1..4) {

    exit

} else {

    # Set department OU based on user's input
    switch ($chosenOU)
    {
        1{$dept = "Accounting"}
        2{$dept = "Engineering"}
        3{$dept = "Sales"}
        4{$dept = "IT"}
    }

    # Create OU path as a string
    $OUpath = "LDAP://OU=$dept,OU=testdomain.local,DC=testdomain,DC=local"

    # Verify with user that PC will be moved to the correct OU
    $confirm = Read-Host "The PC will now be moved to the $dept OU. Do you wish to continue? (y/n) "

    if ($confirm -ne 'y' -or $confirm -ne 'Y') {

        exit

    } else {

        # Move computer to OU
        $newOU = [adsi]$OUpath
        $comp = ([adsisearcher]"samaccountname=$($env:COMPUTERNAME)$").FindOne()
        $compObj = [adsi]$comp.Path
        $compObj.MoveTo($newOU)

        # Update Group Policy
        gpupdate /force 

    }

Stop-Transcript

    # Restart computer
    Write-Host "The computer will now restart..."
    sleep -Seconds 3
    Restart-Computer -Force

}



