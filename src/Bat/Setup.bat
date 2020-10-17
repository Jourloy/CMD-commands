@echo off
title Setup JOURLOY's commands

echo --Install need modules for python
pip3 install -r ../Python/requirements.txt

echo --Add path
setx /M path "%path%;C:\CMD-commands\Bat"