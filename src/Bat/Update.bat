@echo off
title Update JOURLOY's commands

echo -- Download update
curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/Download.bat > C:\CMD-commands\src\Bat\Download.bat
echo -- Open update file
C:\CMD-commands\src\Bat\Download.bat --help