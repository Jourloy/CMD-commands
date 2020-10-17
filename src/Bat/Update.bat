@echo off
title Download JOURLOY's commands

set param=%1

if %param%==--help (
    echo ============================
    echo [          UPDATE          ] 
    echo ----------------------------
    echo Tool for update or download tools
    echo author: JOURLOY
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
    echo Download --Setup
    echo Tool for setup tools
    echo Last update 16.10.2020
    echo ----------------------------
    
    echo (if you want update any tool, then redownload this tool)
    pause
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
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/Info.bat > C:\CMD-commands\src\Bat\Info.bat
    echo -- Done
    pause
)
if %param%==--Password (
    echo -- Download password tool
    echo -- Author: JOURLOY
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/password.bat > C:\CMD-commands\src\Bat\Password.bat
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Python/requirements.txt > C:\CMD-commands\src\Python\requirements.txt
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Python/password.py > C:\CMD-commands\src\Python\password.py
    pip3 install -r C:\CMD-commands\src\Python\requirements.txt
    echo -- Done
    pause
)
if %param%==--Speed (
    echo -- Download speed tool
    echo -- Author: JOURLOY
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/speed.bat > C:\CMD-commands\src\Bat\Speed.bat
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Python/requirements.txt > C:\CMD-commands\src\Python\requirements.txt
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Python/speed.py > C:\CMD-commands\src\Python\speed.py
    pip3 install -r C:\CMD-commands\src\Python\requirements.txt
    echo -- Done
    pause
)
if %param%==--all (
    echo -- Download disable tool
    echo -- Author: JOURLOY
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/disable.bat > C:\CMD-commands\src\Bat\Disable.bat
    echo -- Done

    echo -- Download info tool
    echo -- Author: JOURLOY
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/info.bat > C:\CMD-commands\src\Bat\Info.bat
    echo -- Done

    echo -- Download password tool
    echo -- Author: JOURLOY
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/password.bat > C:\CMD-commands\src\Bat\Password.bat
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Python/requirements.txt > C:\CMD-commands\src\Python\requirements.txt
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Python/password.py > C:\CMD-commands\src\Python\password.py
    pip3 install -r C:\CMD-commands\src\Python\requirements.txt
    echo -- Done

    echo -- Download speed tool
    echo -- Author: JOURLOY
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/speed.bat > C:\CMD-commands\src\Bat\Speed.bat
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Python/requirements.txt > C:\CMD-commands\src\Python\requirements.txt
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Python/speed.py > C:\CMD-commands\src\Python\speed.py
    pip3 install -r C:\CMD-commands\src\Python\requirements.txt
    echo -- Done

    echo -- Download update tool
    echo -- Author: JOURLOY
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/download.bat > C:\CMD-commands\src\Bat\Download.bat
    echo -- Done

    echo -- Download setup tool
    echo -- Author: JOURLOY
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/setup.bat > C:\CMD-commands\src\Bat\Setup.bat
    echo -- Done
) 
