@echo off
title Info about JOURLOY's commands

echo ============================
echo [          UPDATE          ] 
echo ----------------------------
echo Tool for update or download tools
echo author: JOURLOY
echo command for launch: Update --[tool]
echo command for get help: Update --help
echo command for download\update: Download --Update
if EXIST C:\CMD-commands\src\Bat\Update.bat (
    echo -- [downloaded] --
)

echo ============================
echo [         WinUPDATE        ] 
echo ----------------------------
echo Tool for disable windows update and windows defender
echo author: JOURLOY
echo command for launch: WinUpdate run
echo command for get help: WinUpdate --help
echo command for download\update: Download --WinUpdate
if EXIST C:\CMD-commands\src\Bat\WinUpdate.bat (
    echo -- [downloaded] --
)

echo ============================
echo [        WinDEFENDER       ] 
echo ----------------------------
echo Tool for disable windows update and windows defender
echo author: JOURLOY
echo command for launch: WinDefender run
echo command for get help: WinDefender --help
echo command for download\update: Download --WinDefender
if EXIST C:\CMD-commands\src\Bat\WinDefender.bat (
    echo -- [downloaded] --
)

echo ============================
echo [         PASSWORD         ] 
echo ----------------------------
echo Tool for generate random password
echo author: JOURLOY
echo command for launch: Password count [login] [site] [save]
echo command for get saved passwords: Password --show
echo command for get help: Password --help
echo command for download\update: Download --Password
if EXIST C:\CMD-commands\src\Bat\Password.bat (
    echo -- [downloaded] --
)

echo ============================
echo [          SPEED           ] 
echo ----------------------------
echo Tool for check network speed
echo author: JOURLOY
echo command for launch: Speed run
echo command for get help: Speed --help
echo command for download\update: Download --Speed
if EXIST C:\CMD-commands\src\Bat\Speed.bat (
    echo -- [downloaded] --
)