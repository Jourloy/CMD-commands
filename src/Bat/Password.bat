@echo off

title Password

set count=%1
set login=%2
set site=%3
set save=%4

if %count%==--help (
    echo ============================
    echo [         PASSWORD         ]
    echo ----------------------------
    echo Tool for generate random password
    echo command for launch: Password count [login] [site] [save]
    echo * count - amount symbols in password
    echo * [login] - login for site (if you want save password)
    echo * [site] - address of site (if you want save password)
    echo command for get saved passwords: Password --show
    echo command for get help: Password --help
    echo command for download\update: Download --Password
    echo ----------------------------
    echo author: JOURLOY
    exit
)
if %count%==--show (
    echo -- Made by JOURLOY
    C:\CMD-commands\src\Python\user.txt
    exit
)

echo -- Made by JOURLOY
C:\CMD-commands\src\Python\password.py %1 %2 %3

