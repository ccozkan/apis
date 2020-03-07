
import json
import time
import os

while 1:
    try:
        with open("fix.json","r") as file:
            recipes = json.load(file)
    except Exception as e:
        print(e)
        time.sleep(3)
        os.system('clear')
