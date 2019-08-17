import os

path = str(os.path.dirname(os.path.realpath(__file__)))
mes = "setx /M path \"%path%;" + str(path) + "\""
os.system(mes)
