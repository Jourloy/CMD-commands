@echo off
title Download JOURLOY's commands

set param=%1

if %param%==--help (
    echo Download any JOURLOY's tools
    echo ----------------------------
    echo Download --Update
    echo Tool for update tools and download new tools
    echo Last update 17.10.2020
    echo ----------------------------
    echo Download --Disable
    echo Tool for off Windows update and Windows defender
    echo Last update 16.10.2020
    echo ----------------------------
    echo Download --Info
    echo Tool for print information about commands
    echo Last update 16.10.2020
    echo ----------------------------
    echo Download --Password
    echo Tool for generate and save passwords
    echo Last update 16.10.2020
    echo [Python3.8+ need]
    echo ----------------------------
    echo Download --Speed
    echo Tool for check network speed
    echo Last update 16.10.2020
    echo [Python3.8+ need]
    echo ----------------------------
    echo (if you want update any tool, then redownload this tool)
    echo (press CTRL+C for exit)
    pause
    C:\CMD-commands\src\Bat\Download.bat --help
)
if %param%==--Update (
    echo -- Download update tool
    echo -- Author: JOURLOY
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/Update.bat > C:\CMD-commands\src\Bat\Update.bat
    echo -- Done
    pause
)
if %param%==--Disable (
    echo -- Download disable tool
    echo -- Author: JOURLOY
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/Disable.bat > C:\CMD-commands\src\Bat\Disable.bat
    echo -- Done
    pause
)
if %param%==--Info (
    echo -- Download info tool
    echo -- Author: JOURLOY
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/info.bat > C:\CMD-commands\src\Bat\Info.bat
    echo -- Done
    pause
)
if %param%==--Password (
    echo -- Download password tool
    echo -- Author: JOURLOY
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/password.bat > C:\CMD-commands\src\Bat\Password.bat
    echo -- Done
    pause
)
if %param%==--Speed (
    echo -- Download speed tool
    echo -- Author: JOURLOY
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/speed.bat > C:\CMD-commands\src\Bat\Speed.bat
    echo -- Done
    pause
)
if %param%==--test ()
