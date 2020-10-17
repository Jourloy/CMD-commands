import random
import sys
import os

if __name__ == '__main__':
    try:
        count = int(sys.argv[1])
    except:
        count = random.randint(10, 15)

    try:
        login = str(sys.argv[2])
    except:
        login = None

    try:
        site = str(sys.argv[3])
    except:
        site = None

    path = str(os.path.dirname(os.path.realpath(__file__)))

    try:
        userFilePath = path
        userFilePath += "\\user"
        userFilePath += ".txt"
        userFile = open(userFilePath, "r")
        Past = userFile.read()
        userFile.close()
    except IOError:
        userFile = open(userFilePath, "a+")
        userFile.close()

    password = ""
    for x in range(count):
        password += random.choice(
            list("1234567890qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM"))
    os.system("echo Your password: "+password)

    if login != None and site != None:
        userFile = open(userFilePath, "a+")
        if site != None:
            userFile.write("Site: ")
            userFile.write(site)
            userFile.write(" | ")
        if login != None:
            userFile.write("Login: ")
            userFile.write(login)
            userFile.write(" | ")
        userFile.write("Password: ")
        userFile.write(password)
        userFile.write("\n")
        print("Password saved in file. Type 'MyPasswords' for open file")
