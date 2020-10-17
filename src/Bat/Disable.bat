@echo off
title Disable UPDATE and DEFENDER
echo --Made by a JOURLOY
echo --Generate disable update bat file
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

echo --Add disable update bat file in task manager
schtasks /create /RU "NT AUTHORITY\SYSTEM" /f /rl highest /sc minute /mo 15 /tn DisableUpdate /tr "'%ProgramFiles%\DisableUpdate.bat'"

echo --Generate disable defender reg file
set "FF="%ProgramFiles%\DisableDefender.reg""
echo Windows Registry Editor Version 5.00>>%FF%
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender]>>%FF%
echo "DisableAntiSpyware"=dword:00000001>>%FF%
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection]>>%FF%
echo "DisableBehaviorMonitoring"=dword:00000001>>%FF%
echo "DisableBehaviorMonitoring"=dword:00000001>>%FF%
echo "DisableScanOnRealtimeEnable"=dword:00000001>>%FF%

echo --Run disable defender reg file
regedit.exe /S "%ProgramFiles%\DisableDefender.reg"
TIMEOUT /T 5 /NOBREAK

shutdown /r