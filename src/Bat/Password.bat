@echo off

title Password
echo --Made by JOURLOY

set count=%1
set login=%2
set site=%3
set save=%4

../Python/password.py %1 %2 %3 %4
