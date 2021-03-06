#!/usr/bin/python
# -*- coding: utf-8 -*-

import os
import sys
import hues
import speedtest
import urllib.request
import platform
from termcolor import colored

def clear():
    if (platform.system() == 'Windows'):
        os.system('cls')
    else:
        os.system('clear')

if __name__ == '__main__':
    mode = "full"

    if mode == "full":
        clear()
        hues.info("Начинается сбор данных")
        hues.info("|              |")
        clear()
        hues.info("Начинается сбор данных")
        hues.info("|█             |")
        servers = []
        clear()
        hues.info("Начинается сбор данных")
        hues.info("|██            |")
        threads = None
        clear()
        hues.info("Начинается сбор данных")
        hues.info("|███           |")
        try:
            s = speedtest.Speedtest()
            clear()
            hues.info("Начинается сбор данных")
            hues.info("|████          |")
        except Exception as e:
            hues.error("Wifi выключен или соединение слишком слабое")
            print(e)
            exit()
        try:
            s.get_servers(servers)
            clear()
            hues.info("Начинается сбор данных")
            hues.info("|█████         |")
        except:
            hues.error("Невозможно получить сервера")
            exit()
        try:
            s.get_best_server()
            clear()
            hues.info("Начинается сбор данных")
            hues.info("|██████        | (Ожидайте)")
        except:
            hues.error("Невозможно выбрать оптимальный сервер")
            exit()
        try:
            s.download(threads=threads)
            clear()
            hues.info("Начинается сбор данных")
            hues.info("|███████       |")
        except:
            hues.error("Загрузка прервана")
            exit()
        clear()
        hues.info("Начинается сбор данных")
        hues.info("|█████████     |")
        results_dict = s.results.dict()
        clear()
        hues.info("Начинается сбор данных")
        hues.info("|██████████    |")
        downloadSpeed = results_dict.get("download")
        clear()
        hues.info("Начинается сбор данных")
        hues.info("|███████████   |")
        bits = downloadSpeed
        clear()
        hues.info("Начинается сбор данных")
        hues.info("|████████████  |")
        b = bits/8
        clear()
        hues.info("Начинается сбор данных")
        hues.info("|█████████████ |")
        Kb = b/1024
        downloadSpeed = Kb/1024
        clear()
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
            print(">>",colored("Стриминг", 'red', attrs=['blink']))
            print(">>",colored("Загрузка файлов", 'yellow'))
            print(">>",colored("Выгрузка файлов", 'yellow'))
            print(">>",colored("Серфинг", 'green'))
        elif downloadSpeed >= 1 and downloadSpeed <= 2:
            print(">>",colored("Запуск онлайн игр", 'red', attrs=['blink']))
            print(">>",colored("Стриминг", 'magenta', attrs=['blink']))
            print(">>",colored("Загрузка файлов (Это будет медленно)", 'red', attrs=['blink']))
            print(">>",colored("Выгрузка файлов (Это будет медленно)", 'red', attrs=['blink']))
            print(">>",colored("Серфинг", 'yellow'))
        elif downloadSpeed == 0:
            if Kb > 512:
                print(">>",colored("Запуск онлайн игр", 'magenta', attrs=['blink']))
                print(">>",colored("Стриминг", 'magenta', attrs=['blink']))
                print(">>",colored("Загрузка файлов", 'magenta', attrs=['blink']))
                print(">>",colored("Выгрузка файлов", 'magenta', attrs=['blink']))
                print(">>",colored("Серфинг", 'red', attrs=['blink']))
            else:
                print(">>",colored("Запуск онлайн игр", 'magenta', attrs=['blink']))
                print(">>",colored("Стриминг", 'magenta', attrs=['blink']))
                print(">>",colored("Загрузка файлов", 'magenta', attrs=['blink']))
                print(">>",colored("Выгрузка файлов", 'magenta', attrs=['blink']))
                print(">>",colored("Серфинг", 'magenta', attrs=['blink']))
