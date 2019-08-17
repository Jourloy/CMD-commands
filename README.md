# CMD-commands
### Требования для работы:
1. [Python 3.7+](https://www.python.org/downloads/)
2. Windows 10
____
### Установка:
1. Скачайте репозиторий в ZIP архиве
2. Распакуйте ZIP архив в любое место на диске
3. Запустите командную строку с правами администратора
4. Введите команду: `setx /M path "%path%;yourPath"`, где вместо `yourPath` необходимо вставить путь до папки

Например, если Вы расположили папку на диске C: (`C:\CMD-commands\`), то команда должна выглядить так: `setx /M path "%path%;C:\CMD-commands"`
____
## Password
Данная команда генерирует пароль

Команда в CMD: `password [count]`
Параметры:
* COUNT - отвечает за количество символов в пароле

Если параметр **count** указан не будет, то длина пароля будет выбрана случайно между числами 10 и 15
____
