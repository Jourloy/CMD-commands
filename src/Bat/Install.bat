@echo off

title Install JOURLOY's commands

echo -- Made by JOURLOY

echo -- Create folders
MD C:\CMD-commands
MD C:\CMD-commands\src
MD C:\CMD-commands\src\Bat
MD C:\CMD-commands\src\Python

echo -- Downloads files
curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/Update.bat > C:\CMD-commands\src\Bat\Update.bat
curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/Setup.bat > C:\CMD-commands\src\Bat\Setup.bat
curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Python/requirements.txt > C:\CMD-commands\src\Python\requirements.txt

echo -- Run setup batch script
C:\CMD-commands\src\Bat\Setup.bat
