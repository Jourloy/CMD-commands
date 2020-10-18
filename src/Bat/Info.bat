@echo off
title Info about JOURLOY's commands

if EXIST C:\CMD-commands\src\Bat\Update.bat (
    echo ============================
    echo [          UPDATE          ] 
    echo ----------------------------
    echo Tool for update or download tools
    echo author: JOURLOY
    echo command for launch: Update --[tool]
    echo command for get help: Update --help
    echo command for download\update: Download --Update
)
if EXIST C:\CMD-commands\src\Bat\Disable.bat (
    echo ============================
    echo [         DISABLE          ] 
    echo ----------------------------
    echo Tool for disable windows update and windows defender
    echo author: JOURLOY
    echo command for launch: Disable run
    echo command for get help: Disable --help
    echo command for download\update: Download --Disable
)
if EXIST C:\CMD-commands\src\Bat\Password.bat (
    echo ============================
    echo [         PASSWORD         ] 
    echo ----------------------------
    echo Tool for generate random password
    echo author: JOURLOY
    echo command for launch: Password count [login] [site] [save]
    echo command for get saved passwords: Password --show
    echo command for get help: Password --help
    echo command for download\update: Download --Password
)
if EXIST C:\CMD-commands\src\Bat\Speed.bat (
    echo ============================
    echo [          SPEED           ] 
    echo ----------------------------
    echo Tool for check network speed
    echo author: JOURLOY
    echo command for launch: Speed run
    echo command for get help: Speed --help
    echo command for download\update: Download --Speed
)