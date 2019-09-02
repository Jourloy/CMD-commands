import os
import sys
import hues
import speedtest
import urllib.request
from termcolor import colored

if __name__ == '__main__':
    try:
        mode = str(sys.argv[1])
    except:
        mode = ""

    if mode == "full":
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|              |")
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|█             |")
        servers = []
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|██            |")
        threads = None
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|███           |")
        try:
            s = speedtest.Speedtest()
            os.system("cls")
            hues.info("Начинается сбор данных")
            hues.info("|████          |")
        except:
            hues.error("Wifi выключен или соединение слишком слабое")
            exit()
        try:
            s.get_servers(servers)
            os.system("cls")
            hues.info("Начинается сбор данных")
            hues.info("|█████         |")
        except:
            hues.error("Невозможно получить сервера")
            exit()
        try:
            s.get_best_server()
            os.system("cls")
            hues.info("Начинается сбор данных")
            hues.info("|██████        | (Ожидайте)")
        except:
            hues.error("Невозможно выбрать оптимальный сервер")
            exit()
        try:
            s.download(threads=threads)
            os.system("cls")
            hues.info("Начинается сбор данных")
            hues.info("|███████       |")
        except:
            hues.error("Загрузка прервана")
            exit()
        try:
            s.results.share()
            os.system("cls")
            hues.info("Начинается сбор данных")
            hues.info("|████████      |")
        except:
            hues.error("Получение результатов прервано")
            exit()
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|█████████     |")
        results_dict = s.results.dict()
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|██████████    |")
        downloadSpeed = results_dict.get("download")
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|███████████   |")
        bits = downloadSpeed
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|████████████  |")
        b = bits/8
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|█████████████ |")
        Kb = b/1024
        downloadSpeed = Kb/1024
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|██████████████|")
        hues.success("Завершено")
        downloadSpeed = round(downloadSpeed)
        if Kb > 1023:
            downloadSpeed1 = str(downloadSpeed)
            hues.success("Загрузка: "+downloadSpeed1+" МБ/с")
        elif Kb < 1024:
            downloadSpeed1 = str(downloadSpeed)
            hues.success("Загрузка: "+downloadSpeed1+" КБ/с")
        if downloadSpeed >= 9:
            print(">>",colored("Запуск онлайн игр", 'green'))
            print(">>",colored("Стриминг", 'green'))
            print(">>",colored("Загрузка файлов", 'green'))
            print(">>",colored("Выгрузка файлов", 'green'))
            print(">>",colored("Серфинг", 'green'))
        elif downloadSpeed >= 6 and downloadSpeed <= 8:
            print(">>",colored("Запуск онлайн игр", 'green'))
            print(">>",colored("Стриминг", 'yellow'))
            print(">>",colored("Загрузка файлов", 'green'))
            print(">>",colored("Выгрузка файлов", 'green'))
            print(">>",colored("Серфинг", 'green'))
        elif downloadSpeed >= 3 and downloadSpeed <= 5:
            print(">>",colored("Запуск онлайн игр", 'yellow'))
            print(">>",colored("Стриминг", 'red'))
            print(">>",colored("Загрузка файлов", 'yellow'))
            print(">>",colored("Выгрузка файлов", 'yellow'))
            print(">>",colored("Серфинг", 'green'))
        elif downloadSpeed >= 1 and downloadSpeed <= 2:
            print(">>",colored("Запуск онлайн игр", 'red'))
            print(">>",colored("Стриминг", 'cyan'))
            print(">>",colored("Загрузка файлов (Это будет медленно)", 'red'))
            print(">>",colored("Выгрузка файлов (Это будет медленно)", 'red'))
            print(">>",colored("Серфинг", 'yellow'))
        elif downloadSpeed == 0:
            if Kb > 512:
                print(">>",colored("Запуск онлайн игр", 'cyan'))
                print(">>",colored("Стриминг", 'cyan'))
                print(">>",colored("Загрузка файлов", 'cyan'))
                print(">>",colored("Выгрузка файлов", 'cyan'))
                print(">>",colored("Серфинг", 'red'))
            else:
                print(">>",colored("Запуск онлайн игр", 'cyan'))
                print(">>",colored("Стриминг", 'cyan'))
                print(">>",colored("Загрузка файлов", 'cyan'))
                print(">>",colored("Выгрузка файлов", 'cyan'))
                print(">>",colored("Серфинг", 'cyan'))
    else:
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|              |")
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|█             |")
        servers = []
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|██            |")
        threads = None
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|███           | (Ожидайте)")
        try:
            s = speedtest.Speedtest()
        except:
            print(colored(">> Error with start speed test (Wifi in enable?)", 'red'))
            exit()
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|████          |")
        try:
            s.get_servers(servers)
        except:
            print(colored(">> Error with get serves", 'red'))
            exit()
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|█████         | (Ожидайте)")
        try:
            s.get_best_server()
        except:
            print(colored(">> Error with get best server", 'red'))
            exit()
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|██████        | (Ожидайте)")
        try:
            s.download(threads=threads)
        except:
            hues.error("Загрузка прервана")
            exit()
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|███████       | (Ожидайте)")
        try:
            s.upload(threads=threads)
        except:
            hues.error("Выгрузка прервана")
            exit()
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|████████      |")
        try:
            s.results.share()
        except:
            hues.error("Получение данных прервано")
            exit()
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|█████████     |")
        results_dict = s.results.dict()
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|██████████    |")
        downloadSpeed = results_dict.get("download")
        downloadBits = downloadSpeed
        downloadBaits = downloadBits/8
        downloadKb = downloadBaits/1024
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|████████████  |")
        downloadMb = downloadKb/1024
        downloadMb = round(downloadMb)
        downloadSpeed = round(downloadSpeed)
        uploadSpeed = results_dict.get("upload")
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|█████████████ |")
        uploadSpeed = uploadSpeed/8/1024/1024
        uploadBits = uploadSpeed
        uploadBaits = uploadBits/8
        uploadKb = uploadBaits/1024
        uploadMb = uploadKb/1024
        uploadMb = round(uploadMb)
        os.system("cls")
        hues.info("Начинается сбор данных")
        hues.info("|██████████████|")
        hues.success("Завершено")
        if downloadKb > 1023:
            downloadMb = str(downloadMb)
            hues.success("Загрузка: "+downloadMb+" МБ/с")
        else:
            downloadKb = round(downloadKb)
            downloadKb = str(downloadKb)
            hues.success("Загрузка: "+downloadKb+" КБ/с")

        if uploadKb > 1023:
            uploadMb = str(uploadMb)
            hues.success("Выгрузка: "+uploadMb+" МБ/с")
        else:
            uploadKb = round(uploadKb)
            uploadKb = str(uploadKb)
            hues.success("Выгрузка: "+uploadKb+" КБ/с")
