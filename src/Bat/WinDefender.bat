@echo off

title Disable Windows Update

set param=%1
set admin=%2

if %param%==--help (
    echo ============================
    echo [        WinDEFENDER       ] 
    echo ----------------------------
    echo Tool for disable windows update and windows defender
    echo author: JOURLOY
    echo command for launch: WinDefender run
    echo command for get help: WinDefender --help
    echo command for download\update: Download --WinDefender
)

if %admin%==adm (
    if %param%==run (
        echo ============================
        echo [        WinDEFENDER       ] 
        echo ----------------------------
        set /p run=Will be system reboot. Are you ready? (yes/no): 
        if %run%==yes (
            echo -- Generate disable defender reg file
            set "FF="%ProgramFiles%\DisableDefender.reg""
            echo Windows Registry Editor Version 5.00>>%FF%
            echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender]>>%FF%
            echo "DisableAntiSpyware"=dword:00000001>>%FF%
            echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection]>>%FF%
            echo "DisableBehaviorMonitoring"=dword:00000001>>%FF%
            echo "DisableBehaviorMonitoring"=dword:00000001>>%FF%
            echo "DisableScanOnRealtimeEnable"=dword:00000001>>%FF%

            echo -- Run disable defender reg file
            regedit.exe /S "%ProgramFiles%\DisableDefender.reg"
            del /Q "%ProgramFiles%\DisableDefender.reg"

            shutdown /r
        )
    )
)
else (
    powershell.exe Start-Process "C:\CMD-commands\src\Bat\WinDisable.bat --%param% adm" -Verb runAs
)