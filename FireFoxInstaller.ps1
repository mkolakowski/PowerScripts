#-------------------------------------------------------------------------------------------------------------------------------------------------------------
# Install Latest Version of FireFox
# Tested by Matthew Kolakowsi on 2017-11-30
#-------------------------------------------------------------------------------------------------------------------------------------------------------------

# Setting users Temp folder in vatiable
$LocalTempDirFireFoxInstall = $env:TEMP

# Setting generic firefox installer name to variable
$FireFoxInstaller = "FireFoxInstaller.exe"

# Downloads the latest Firefox full installer to the users temp folder and renames it to the generic Firefox insstaller name 
(new-object    System.Net.WebClient).DownloadFile('https://download.mozilla.org/?product=firefox-latest-ssl&lang=en-US', "$LocalTempDirFireFoxInstall\$FireFoxInstaller") 

# starting the silent install of FireFox
start-process -FilePath  "$LocalTempDirFireFoxInstall\$FireFoxInstaller" /s

# Deletes the newly downloaded installer
Remove-Item –path "$LocalTempDirFireFoxInstall\$FireFoxInstaller" -whatif
