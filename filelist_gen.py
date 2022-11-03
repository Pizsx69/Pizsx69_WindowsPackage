import os
import re

# folder path
dir_path = r'.'

# list to store files
res = []

# Iterate directory
for path in os.listdir(dir_path):
    # check if current path is a file
    if os.path.isfile(os.path.join(dir_path, path)):
        res.append(path)
    
for x in res:
    if x == "filelist_gen.py" or x == "Pizsi_Script.ps1":
        continue
    print("\'"+x+"\'")
#print("'"+str(res)+"'")