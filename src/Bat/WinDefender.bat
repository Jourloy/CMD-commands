@echo off

title Disable Windows Defender

echo ============================
echo [        WinDEFENDER       ] 
echo ----------------------------
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