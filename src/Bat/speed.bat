@echo off

title Speed Test

set param=%1

if %param%==--help (
    echo ============================
    echo [          SPEED           ] 
    echo ----------------------------
    echo Tool for check network speed
    echo author: JOURLOY
    echo command for launch: Speed run
    echo command for get help: Speed --help
    echo command for download\update: Download --Speed
)

if %param%==run (
    echo ============================
    echo [          SPEED           ] 
    echo ----------------------------
    python C:\CMD-commands\src\Python\speedTest.py
)


