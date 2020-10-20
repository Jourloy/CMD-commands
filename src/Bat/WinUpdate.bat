@echo off

title Disable Windows Defender

set param=%1

if %param%==--help (
    echo ============================
    echo [         WinUPDATE        ] 
    echo ----------------------------
    echo Tool for disable windows update and windows defender
    echo author: JOURLOY
    echo command for launch: WinUpdate run
    echo command for get help: WinUpdate --help
    echo command for download\update: Download --WinUpdate
)

if %param%==run (
    echo ============================
    echo [         WinUPDATE        ] 
    echo ----------------------------
    echo -- Generate disable update bat file
    set "F="%ProgramFiles%\DisableUpdate.bat""
    echo @echo off>%F%
    echo net stop wuauserv>>%F%
    echo net stop bits>>%F%
    echo net stop dosvc>>%F%
    echo net stop usosvc>>%F%
    echo sc config wuauserv start= disabled>>%F%
    echo sc config bits start= disabled>>%F%
    echo sc config dosvc start= disabled>>%F%
    echo sc config usosvc start= disabled>>%F%

    echo -- Add disable update bat file in task manager
    schtasks /create /RU "NT AUTHORITY\SYSTEM" /f /rl highest /sc minute /mo 15 /tn DisableUpdate /tr "'%ProgramFiles%\DisableUpdate.bat'"
)