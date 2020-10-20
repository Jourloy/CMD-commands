@echo off
title Download JOURLOY's commands

set param=%1

if %param%==--help (
    echo ============================
    echo [          UPDATE          ] 
    echo ----------------------------
    echo Tool for update or download tools
    echo author: JOURLOY
    echo command for launch: Update --[tool]
    echo command for get help: Update --help
    echo command for download\update: Download --Update
    echo (if you want update any tool, then redownload this tool)
)
if %param%==--Update (
    echo -- Download update tool
    echo -- Author: JOURLOY
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/Update.bat > C:\CMD-commands\src\Bat\Update.bat
    echo -- Done
)
if %param%==--WinDefender (
    echo -- Download disable windows defender tool
    echo -- Author: JOURLOY
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/WinDefender.bat > C:\CMD-commands\src\Bat\WinDefender.bat
    echo -- Done
)
if %param%==--WinUpdate (
    echo -- Download disable windows update tool
    echo -- Author: JOURLOY
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/WinUpdate.bat > C:\CMD-commands\src\Bat\WinUpdate.bat
    echo -- Done
)
if %param%==--Info (
    echo -- Download info tool
    echo -- Author: JOURLOY
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/Info.bat > C:\CMD-commands\src\Bat\Info.bat
    echo -- Done
)
if %param%==--Password (
    echo -- Download password tool
    echo -- Author: JOURLOY
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/Password.bat > C:\CMD-commands\src\Bat\Password.bat
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Python/requirements.txt > C:\CMD-commands\src\Python\requirements.txt
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Python/password.py > C:\CMD-commands\src\Python\password.py
    pip3 install -r C:\CMD-commands\src\Python\requirements.txt
    echo -- Done
)
if %param%==--Speed (
    echo -- Download speed tool
    echo -- Author: JOURLOY
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/Speed.bat > C:\CMD-commands\src\Bat\Speed.bat
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Python/requirements.txt > C:\CMD-commands\src\Python\requirements.txt
    curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Python/speed.py > C:\CMD-commands\src\Python\speed.py
    pip3 install -r C:\CMD-commands\src\Python\requirements.txt
    echo -- Done
)
