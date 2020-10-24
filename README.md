### Required:
1. [Python 3.8+](https://www.python.org/downloads/)
2. Windows 10
____
### Install (1 method):
1. Open CMD
2. Type `curl -L https://raw.githubusercontent.com/Jourloy/CMD-commands/master/src/Bat/Install.bat >> install.bat`
3. Appear **install.bat**. Run it with administrator rights
4. Remove **install.bat**
____
### Install (2 method):
1. Downlooad repository in ZIP archieve
2. Unpack ZIP archieve on a disk **C:**!
3. Rename folder on **CMD-commands**
4. Open folder with path: **C:\CMD-commands\src\Bat**
5. Run **Setup.bat** with administrator rights
6. Open CMD and type **Info** for get information about tools
____
## Info
![alt-текст](https://github.com/Jourloy/CMD-commands/blob/master/photo/info.png)

Print information about all tools

Result | Command
------------ | -------------
Run | Info
Help | Отсутствует
Donwload/Update | Update --Info
____
## Password
![alt-текст](https://github.com/Jourloy/CMD-commands/blob/master/photo/password.png)

Generate password and save (optional)

Params:
* **COUNT** - Amount symbols in password
* **LOGIN** - Login on site (Required if you want save)
* **SITE** - Site (Required if you want save)

Result | Command
------------ | -------------
Run | password [count]
Run and save password | Password count [login] [site]
Help | Password --help
Donwload/Update | Update --Password
____
## Speed
![alt-текст](https://github.com/Jourloy/CMD-commands/blob/master/photo/speed.png)

Print network speed and information what you can do

Result | Command
------------ | -------------
Run | Speed run
Help | Speed --help
Donwload/Update | Update --Speed
____
## WinDefender

Disable windows defender. Will be create file in ProgramFiles, this file can not be deleted

**WARNING** | This is **unsafe**

Result | Command
------------ | -------------
Run | WinDefender run
Help | WinDefender --help
Donwload/Update | Update --WinDefender
____
## WinUpdate

![alt-текст](https://github.com/Jourloy/CMD-commands/blob/master/photo/winupdate.png)

Disable windows update

**WARNING** | This is **unsafe**

Result | Command
------------ | -------------
Run | WinUpdate run
Help | WinUpdate --help
Donwload/Update | Update --WinUpdate
