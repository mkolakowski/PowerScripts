#-------------------------------------------------------------------------------------------------------------------------------------------------------------
# Install Latest Version of Microsoft Teams x64
# Is Silent == YES
# Created by matthew.kolakowski@afidence.com
# v1.0.2017.12.05
# Tested by Matthew Kolakowsi on 2017-12-05
#-------------------------------------------------------------------------------------------------------------------------------------------------------------

# Setting users Temp folder in vatiable
$LocalTempDirMicrosoftTeamsInstall = $env:TEMP

# Setting generic firefox installer name to variable
$MicrosoftTeamsInstaller = "MicrosoftTeamsInstaller.exe"

# Setting the URL to download the application from
$MicrosoftTeamsDownloadURL = "https://statics.teams.microsoft.com/production-windows-x64/1.0.00.31451/Teams_windows_x64.exe"

# Downloads the latest Firefox full installer to the users temp folder and renames it to the generic Firefox insstaller name 
(new-object    System.Net.WebClient).DownloadFile($MicrosoftTeamsDownloadURL, "$LocalTempDirMicrosoftTeamsInstall\$MicrosoftTeamsInstaller") 

# starting the silent install of FireFox
start-process -FilePath  "$LocalTempDirMicrosoftTeamsInstall\$MicrosoftTeamsInstaller" /s

# sets script to sleep for 60 seconds to allow for the Install to complete
Start-Sleep -m 60000

# Deletes the newly downloaded installer
Remove-Item –path "$LocalTempDirMicrosoftTeamsInstall\$MicrosoftTeamsInstaller"

