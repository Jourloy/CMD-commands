#Другие библеотеки
import random
import sys
import os

try:
    count = int(sys.argv[1])
except:
    count = random.randint(10, 15)
password = ""
for x in range(count):
    password += random.choice(
        list("1234567890qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM"))
os.system("echo "+password)
